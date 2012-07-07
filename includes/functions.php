<?php

/*
 * KWDS Common Functions
 */

function can_add_rooms($id) {
    $db=new db;
    $result = $db->get_kwds($_GET['kwds']);
    $n = mysql_result($result, 0, 'id');
    // Checks to see if you are on staff for the upcoming KWDS
    if (isset($_SESSION['user_id'])) {
        $result = $db->get_user_job($_SESSION['user_id'], $n);
        if (mysql_num_rows($result) > 0){
            $job=mysql_result($result, 0, 'job.id');
            if (($job==1 OR $job==2 OR ($job>=6 AND $job<=9))) {
                return true;
            }
        }
    }
    if ($id==1) { return true; }
    return false;
}

//email validate function found here: http://www.linuxjournal.com/article/9585
function check_email_address($email) {
    $isValid = true;
    $atIndex = strrpos($email, "@");
    if (is_bool($atIndex) && !$atIndex) {
        $isValid = false;
    } else {
        $domain = substr($email, $atIndex + 1);
        $local = substr($email, 0, $atIndex);
        $localLen = strlen($local);
        $domainLen = strlen($domain);
        if ($localLen < 1 || $localLen > 64) {
            // local part length exceeded
            $isValid = false;
        } else if ($domainLen < 1 || $domainLen > 255) {
            // domain part length exceeded
            $isValid = false;
        } else if ($local[0] == '.' || $local[$localLen - 1] == '.') {
            // local part starts or ends with '.'
            $isValid = false;
        } else if (preg_match('/\\.\\./', $local)) {
            // local part has two consecutive dots
            $isValid = false;
        } else if (!preg_match('/^[A-Za-z0-9\\-\\.]+$/', $domain)) {
            // character not valid in domain part
            $isValid = false;
        } else if (preg_match('/\\.\\./', $domain)) {
            // domain part has two consecutive dots
            $isValid = false;
        } else if (!preg_match('/^(\\\\.|[A-Za-z0-9!#%&`_=\\/$\'*+?^{}|~.-])+$/', str_replace("\\\\", "", $local))) {
            // character not valid in local part unless local part is quoted
            if (!preg_match('/^"(\\\\"|[^"])+"$/', str_replace("\\\\", "", $local))) {
                $isValid = false;
            }
        }
        if ($isValid && !(checkdnsrr($domain, "MX") || checkdnsrr($domain, "A"))) {
            // domain not found in DNS
            $isValid = false;
        }
    }
    return $isValid;
}

//Used to create a dropdown box, need list to require name and id
function dropdown($result, $type, $select=1) {
    $row = mysql_num_rows($result);
    echo '<select name="' . $type . '">';
    for ($i = 0; $i < $row; $i++) {
        $name = mysql_result($result, $i, 'name');
        $num = mysql_result($result, $i, 'id');
        echo '<option value="' . $num . '" ';
        if ($select == $num) {
            echo 'selected="selected"';
        }
        echo '>' . $name . '</option>';
    }
    echo '</select>';
}

function dropdown_hour() {
    echo'<select name="hour" class="hour">';
    for ($i=1;$i<=12;$i++) {
        echo'<option value="';
        if ($i<10) {echo '0';}
        echo $i.'">'.$i.'am</option>';
    }
    for ($i=1;$i<=12;$i++) {
        echo'<option value="';
        echo ($i+12).'">'.$i.'pm</option>';
    }
    echo '</select>';
}

function dropdown_num($name, $start, $max, $increment=1, $index=1) {
    echo '<select name="'.$name.'" class="number">';
    for ($i=$start;$i<=$max;$i+=$increment) {
        echo'<option ';
        if ($i==$index) {echo 'selected="selected" ';}
        echo'value="';
        if ($i<10) {echo '0';}
        echo $i.'">'.$i.'</option>';
    }
    echo '</select>';
}

//Used to further sanitize user input
function escape_query($str) {
    return strtr($str, array(
        "\0" => "",
        "'"  => "&#39;",
        "\'" => "&#39;",
        '\"' => "&#34;",
        '"'  => "&#34;",
        "\\" => "&#92;",
        // more secure
        "<"  => "&lt;",
        ">"  => "&gt;",
        "\r\n" =>"<br />",
        "\n" => "<br />",
    ));
}

// Displays an error page
function get_error_page($message) {
    require_once('error_page.php');
}

// Makes a list of dates that the event runs()
function get_event_dates($cdate) {
    global $ksdate, $kedate;
    $begin = strtotime($ksdate);
    $end=strtotime($kedate);
    echo '<select name="date">';
    while ($begin<=$end) {
        $display=date('l, F j, Y', $begin);
        $value=date('Y-m-d', $begin);
        echo '<option value="'.$value.'"';
        if ($cdate==$value) { echo ' selected="selected"';}
        echo '>'.$display.'</option>';
        $begin+=(24*60*60);
    }
    echo '</select>';
}

// Used to verify that the current user is an autocrat (or co-autocrat) of the upcoming KWDS
function is_autocrat($id,$n) {
    $db = new db;
    if (isset($_SESSION['user_id'])) {
        $result = $db->get_user_job($_SESSION['user_id'], $n);
        if (mysql_num_rows($result) > 0 AND (mysql_result($result, 0, 'job.id')==1 OR mysql_result($result, 0, 'job.id')==2 OR mysql_result($result, 0, 'job.id')==16)) {
            return true;
        }
    }
    if ($id==1) { return true; }
    return false;
}

// Used to verify that the current user has access to everything
function is_super_user() {
    if ($_SESSION['user_id']==1) {
        return true;
    }
    return false;

}

// Random Character Generator
function random_gen($length) {
    $random = "";
    srand((double) microtime() * 1000000);
    $char_list = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    $char_list .= "abcdefghijklmnopqrstuvwxyz";
    $char_list .= "1234567890";

    for ($i = 0; $i < $length; $i++) {
        $random .= substr($char_list, (rand() % (strlen($char_list))), 1);
    }
    return $random;
}

// A redirection function
function redirect($location, $page_id = '', $id = '') {
    switch ($location) {
        default:
        case 'index':
            $url = 'index.php';
            $message = 'Redirecting to main page... ';
            break;
        case 'login':
            $url = 'login.php';
            $message = 'Redirecting to login page... ';
            break;
        case 'profile':
            $url = 'profile.php';
            $message = 'Redirecting to your profile page... ';
            break;
        case 'schedule':
            $url = 'schedule.php';
            $message = 'Redirecting to the schedule page... ';
            break;
        case 'staff':
            $url = 'staff.php';
            $message = 'Redirecting to the staff editing page... ';
            break;
    }

    echo '
<script type="text/javascript">
    setTimeout(function () {window.location.href= "' . $url . '";},3000);
</script>';
    echo $message . ' <a href="' . $url . '">Click here to proceed</a>.';
}

// A function to reverse the effects of the escape_query() function
function redisplay($str) {
    return strtr($str, array(
        "&#39;" => "'",
        "&#34;" => '"',
        //"&#92;" => "\\",
        "<br />" => "\n",
        "&lt;" => "<",
        "&gt;" => ">",
    ));
}

// Converts an integer to Roman numerals
function roman($integer) {
    $integer = intval($integer);
    $result = '';
    $lookup = array('M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100, 'XC' => 90,
        'L' => 50, 'XL' => 40, 'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1);
    foreach ($lookup as $roman => $value) {
        $matches = intval($integer / $value);
        $result .= str_repeat($roman, $matches);
        $integer = $integer % $value;
    }
    return $result;
}

//  A function to sanitize input
function sanit($input) {
    $input2 = escape_query($input);
    $output = mysql_real_escape_string($input2);
    return $output;
}

?>
