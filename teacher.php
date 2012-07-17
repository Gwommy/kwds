<?php
/*
 * KWDS Teachers
 */
require_once('includes/header.php');

$teachers = $db->get_teachers($num);

echo '<h1>Teacher and Speaker Information</h1>';
if (count($teachers) == 0) {
    echo '<p>There is no information to report.</p>';
}
else {
    $tid = 0;
    echo '<div class="teachers">';
    for ($i = 0; $i < $rows; $i++) {
        if ($tid != $teachers['UserID']) {
            $tid = $teachers['UserID'];
            echo '<h2><a href="profile.php?id='.$tid.'">'.$teachers['SCAFirst'].' '.$teachers['SCALast'];
            if ($teachers['first'] != "") {
                echo '('.$teachers['MundaneFirst'].' '.$teachers['MundaneLast'].')';
            }
        }
        echo '</a></h2>';
        echo '<p><a href="schedule.php?kwds='.$teachers['kwds_id'].'&id='.$teachers['ClassID'].'">'.$teachers['ClassName'].'</a></p>';
    }
    echo '</div>';
}

include_once('includes/footer.php');
?>
