<?php
/*
 * KWDS Schedule
 */
require_once('includes/header.php');

// Determine if a class was clicked on for individual viewing
$cid = (isset($_GET['id'])) ? $_GET['id'] : 0;
$result = $db->get_class($cid);

// Get the class information and store it in variables
if (mysql_num_rows($result) == 1) {
    $class_name = mysql_result($result, 0, 'class.name');
    $uid = mysql_result($result, 0, 'user.id');
    $sca_name = mysql_result($result, 0, 'title.name') . ' ' . mysql_result($result, 0, 'sca_first') . ' ' . mysql_result($result, 0, 'sca_last');
    $mundane_name = mysql_result($result, 0, 'prefix.name') . ' ' . mysql_result($result, 0, 'user.first') . ' ' . mysql_result($result, 0, 'user.last');
    $room = mysql_result($result, 0, 'room.name');
    $desc = redisplay(redisplay(mysql_result($result, 0, 'class.description')));
    $start_time = date('l \a\t g:iA', (strtotime(mysql_result($result, 0, 'day'))));
    $length = mysql_result($result, 0, 'hours');
    $type = mysql_result($result, 0, 'type_id');

    // Display the class information
    echo'
<div class="class_info">
    <h2>' . $class_name . '</h2>
    <ul>
        <li><label class="bold">Instructor: </label> <a href="profile.php?id=' . $uid . '">' . $sca_name;
    if ($mundane_name != "  ") {
        echo' (' . $mundane_name . ')';
    }
    echo'</a></li>
        <li><label class="bold">Schedule: </label> ' . $room . ' on ' . $start_time . '</li>
    </ul>
    <p>' . $desc . '</p>
</div>
        ';
}
$where="type_id>0";
?>

<script language="JavaScript" type="text/javascript">

    function form_submit(id) {
        document.forms["class_form"].action="schedule.php?kwds=<?php echo $num; ?>&id="+id;
        document.forms["class_form"].submit();
    }

    function my_schedule() {
        document.forms["class_form"].action="myschedule.php?kwds=<?php echo $num; ?>";
        document.getElementById("button").submit();
        //document.forms["class_form"].submit();
    }

</script>
<?php // Display the legend and the schedule ?>
<h1>Schedule for KWDS <?echo roman($num);?></h1>
<form id="class_form" method="post">
<div class="schedule legend">
    <div class="th"><u>Legend</u><br />Black is not rated</div>
    <div class="class europ">European Dance Class <br />(Green Border)<br /><input type="checkbox" name="europ" value="europ" onclick="form_submit(0)"
        <?php if (isset($_POST['europ'])) {echo 'checked="checked" '; $where.=" AND type_id!='2'";} ?> />Hide</div>
    <div class="class meast">Middle Eastern <br />Dance Class<br />(Red Border)<br /><input type="checkbox" name="meast" value="meast" onclick="form_submit(0)"
        <?php if (isset($_POST['meast'])) {echo 'checked="checked" '; $where.=" AND type_id!='3'";} ?>/>Hide</div>
    <div class="class music">Music Class<br />(Blue Border)<br /><input type="checkbox" name="music" value="music" onclick="form_submit(0)"
        <?php if (isset($_POST['music'])) {echo 'checked="checked" '; $where.=" AND type_id!='4'";} ?>/>Hide</div>
    <div class="class beg">Beginner's Class<br />(Green Text)</div>
    <div class="class int">Intermediate Class<br />(Blue Text)</div>
    <div class="class adv">Advanced Class<br />(Red Text)</div>
</div>
<?php

// Determines number of days that this KWDS lasts
$kday = 0;
$keday = (date('z', strtotime($kedate)) - date('z', strtotime($ksdate)));
for ($kday; $kday <= $keday; $kday++) {
    $result = $db->get_rooms($num);

    // Show message if there are no rooms submitted for this KWDS
    if (mysql_num_rows($result) < 1) {
        echo '<div class="box attention">There are no rooms available for this KWDS yet.</div>';
    }

    else {
        $newdate=strtotime('+'.($kday)." day", strtotime($ksdate));
        echo '
<div class="schedule" ><h2>Day ' . ($kday+1) . ': '.date('l',$newdate).'</h2>
    <div class="tr">
        <div class="time">TIME</div>';
        for ($i = 9; $i != 6; $i++) {
            echo '
        <div class="hour">' . $i . ':00</div>';
            if ($i >= 12) {
                $i = 0;
            }
        }
        echo '
    </div>';
        for ($i = 0; $i < mysql_num_rows($result); $i++) {
            echo'
    <div class="tr">';
            $room = $db->get_class_rooms(mysql_result($result, $i, 'room.id'), date('z', strtotime($ksdate)) + $kday + 2, $where);
            if (mysql_num_rows($room) > 0) {
                echo'
        <div class="th">' . mysql_result($result, $i, 'name') . '</div>';
                for ($j = 0; $j < mysql_num_rows($room); $j++) {
                    //if ((isset($_POST['checkboxes']) AND $_POST['c' . mysql_result($room, $j, 'class.id')] == mysql_result($room, $j, 'class.id'))) {
                        echo '<div class="class';
                        switch (mysql_result($room, $j, 'type_id')) {
                            case 2:
                                echo ' europ';
                                break;
                            case 3:
                                echo ' meast';
                                break;
                            case 4:
                                echo ' music';
                                break;
                            default:
                                break;
                        }
                        switch (mysql_result($room, $j, 'difficulty_id')) {
                            case 2:
                                echo ' beg';
                                break;
                            case 3:
                                echo ' int';
                                break;
                            case 4:
                                echo ' adv';
                                break;
                            default:
                                break;
                        }
                        $thistime = strtotime(mysql_result($room, $j, 'day'));
                        echo '" style="width:' . (mysql_result($room, $j, 'hours') * 1.1) . 'px; position: absolute; margin-left: ' . mysql_result($room, $j, 'time') . 'px;"
                        title="' . mysql_result($room, $j, 'class.name') . ' - ' . mysql_result($room, $j, 'description') . '">
                        <input class="mark" type="checkbox" name="c' . mysql_result($room, $j, 'class.id') . '" value="' . mysql_result($room, $j, 'class.id') . '"';
                        if ($_POST['c' . mysql_result($room, $j, 'class.id')] == mysql_result($room, $j, 'class.id')) {
                            echo ' checked="checked"';
                        }
                        echo ' /><a onclick="form_submit(' . mysql_result($room, $j, 'class.id') . ')"><div class="title">' . date('g:iA', $thistime) . ' ' . mysql_result($room, $j, 'name') . '</div>
                        <div class="user"> ' . mysql_result($room, $j, 'user') . '</div></a></div>';
                    //}
                }
            }
            echo'
    </div>';
        }
        echo'
</div>';
    }
}
?>
    <input id="button" type="submit" class="button" name="checkboxes" onclick="my_schedule()" value="Show My Schedule" />
</form>
<div class="schedule unschedule"><h2 class="unschedule">Unscheduled Classes</h2>
<?php
$classes = $db->get_unscheduled_classes($num);
$row = mysql_num_rows($classes);
if ($row > 0) {
    for ($i = 0; $i < $row; $i++) {
        echo '<a href="schedule.php?kwds=' . $num . '&id=' . mysql_result($classes, $i, 'class.id') . '"><div class="class';
        switch (mysql_result($classes, $i, 'type_id')) {
            case 2:
                echo ' europ';
                break;
            case 3:
                echo ' meast';
                break;
            case 4:
                echo ' music';
                break;
            default:
                break;
        }
        switch (mysql_result($classes, $i, 'difficulty_id')) {
            case 2:
                echo ' beg';
                break;
            case 3:
                echo ' int';
                break;
            case 4:
                echo ' adv';
                break;
            default:
                break;
        }
        echo '" style="width:' . (mysql_result($classes, $i, 'hours') * 1.1) . 'px;" >' . mysql_result($classes, $i, 'name') . '</div></a>';
    }
}
?>
</div>
<?php
/*
foreach ($_POST as $key => $value) {
    echo $value;
}
*/

/* $classes = $db->get_unscheduled_classes($num);
  $row = mysql_num_rows($classes);
  if ($row > 0) {
  for ($i = 0; $i < $row; $i++) {
  echo '
  <div class="class" style="width:' . (mysql_result($classes, $i, 'hours') * 1.1) . 'px;" >' . mysql_result($classes, $i, 'name') . '</div>';
  }
  }
  echo'</div>'; */
include_once('includes/footer.php');
?>
