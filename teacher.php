<?php
/*
 * KWDS Teachers
 */
require_once('includes/header.php');

$teachers=$db->get_teachers($num);
$rows=mysql_num_rows($teachers);
echo '<h1>Teacher and Speaker Information</h1>';
if ($rows < 1) {
    echo '<p>There is no information to report.</p>';
}
else {
    $tid = 0;
    echo '<div class="teachers">';
    for ($i = 0; $i < $rows; $i++) {
        if ($tid!=mysql_result($teachers, $i, 'user.id')) {
            $tid=mysql_result($teachers, $i, 'user.id');
            echo '<h2><a href="profile.php?id='.$tid.'">'.mysql_result($teachers, $i, 'sca_first').' '.mysql_result($teachers, $i, 'sca_last');
            if (mysql_result($teachers, $i, 'first')!="") {
                echo '('.mysql_result($teachers, $i, 'first').' '.mysql_result($teachers, $i, 'last').')';
            }
        }
        echo '</a></h2>';
        echo '<p><a href="schedule.php?kwds='.mysql_result($teachers, $i, 'kwds_id').'&id='.mysql_result($teachers, $i, 'class.id').'">'.  mysql_result($teachers, $i, 'class.name').'</a></p>';
    }
    echo '</div>';
}

include_once('includes/footer.php');
?>
