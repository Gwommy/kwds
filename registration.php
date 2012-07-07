<?php
/*
 * KWDS Registration
 */
require_once('includes/header.php');
?>
<h1>Site Fees and Registration</h1>
<div class="fees">
<?php
$result = $db->get_fees($num);
$row = mysql_num_rows($result);
$type="";
if ($row > 1) {
    for ($i = 0; $i < $row; $i++) {
        if (($type.$prereg) != (mysql_result($result, $i, 'fee_type.name').mysql_result($result, $i, 'prereg'))) {
            $type = mysql_result($result, $i, 'fee_type.name');
            $prereg = mysql_result($result, $i, 'prereg');
            echo '<h2>'.$type;
            if ($prereg==1) {
                echo ' Pre-registration Fees';
            }
            echo '</h2>';
        }
        $name = mysql_result($result, $i, 'fees.name');
        $price = mysql_result($result, $i, 'price');
        $desc = mysql_result($result, $i, 'description');
        
        setlocale(LC_MONETARY, 'en_US');
        echo '<div class="box info"><span class="float_right">'. money_format('%n', $price) .'</span>
            <h3 class="bold">' . $name .'</h3><br />' . $desc .'</div>';
    }
}
else {
    echo '<p>There is no information to report.</p>';
}
?>
</div>
<?php
include_once('includes/footer.php');
?>
