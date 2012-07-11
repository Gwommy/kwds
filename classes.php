<?php

/*
 * KWDS Class Listing
 */
require_once('includes/header.php');

echo'<h1>Classes</h1>';
$result = $db->get_class_info($num);
if (mysql_num_rows($result) < 1) {
    echo'<p>There are no classes scheduled for this event yet.</p>';
} else {
    echo'<p>There are ' . mysql_num_rows($result) . ' classes.</p>';
    $rows = mysql_num_rows($result);
    for ($i = 0; $i < $rows; $i++) {
        $class_name = mysql_result($result, $i, 'class.name');
        $uid = mysql_result($result, $i, 'user.id');
        $sca_name = mysql_result($result, $i, 'title.name') . ' ' . mysql_result($result, $i, 'sca_first') . ' ' . mysql_result($result, $i, 'sca_last');
        $mundane_name = mysql_result($result, $i, 'prefix.name') . ' ' . mysql_result($result, $i, 'user.first') . ' ' . mysql_result($result, $i, 'user.last');
        $room = mysql_result($result, $i, 'room.name');
        $desc = redisplay(mysql_result($result, $i, 'class.description'));
        $start_time = date('l \a\t g:iA', (strtotime(mysql_result($result, $i, 'day'))));
        $length = mysql_result($result, $i, 'hours');
        $type = mysql_result($result, $i, 'type_id');
        echo'
<div class="class_info">
    <h2>' . $class_name . '</h2>
    <ul>
        <li><label class="bold">Instructor: </label> <a href="profile.php?id='.$uid.'">' . $sca_name;
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
    $result = $db->get_unscheduled_classes($num);
    $row = mysql_num_rows($result);
    if ($row > 0) {
        echo '
<h2>Unscheduled or Canceled Classes</h2>
    <ul>';
        for ($i = 0; $i < $row; $i++) {
            echo '
        <li>' . mysql_result($result, $i, 'name') . '</li>';
        }
        echo '
    </ul>';
    }
}
include_once('includes/footer.php');
?>
