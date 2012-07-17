<?php
/*
 * KWDS Registration
 */
require_once('includes/header.php');
?>
<h1>Site Fees and Registration</h1>
<div class="fees">
<?php
$result = $db->get_fees($kwds['id']);

$type="";
if (count($result) > 0) {
    foreach ($result as $row) {
        if ($type.$prereg != $row['FeeTypeName'].$row['prereg']) {
            $type = $row['FeeTypeName'];
            $prereg = $row['prereg'];
            echo '<h2>'.$type;
            if ($prereg==1) {
                echo ' Pre-registration Fees';
            }
            echo '</h2>';
        }
        $name = $row['FeeName'];
        $price = $row['price'];
        $desc = $row['description'];
        
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
