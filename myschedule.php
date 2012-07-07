<?php
/*
 * KWDS My Schedule
 */
require_once('includes/header.php');
?>
<h1>My Schedule for KWDS <?php echo $num ?></h1>
<?php
if (!isset($_POST['checkboxes'])) {
    echo '<div class="box attention">You don\'t have any classes selected from the schedule.</div>';
    redirect('schedule');
    include_once('includes/footer.php');
    die;
}
$where="class.id='-1' ";
echo '<form action="schedule.php?kwds='.$num.'" method="post">';
foreach ($_POST as $key => $value) {
    echo '<input type="hidden" name="'.$key.'" value="'.$value.'" />';
    if ($key!="checkboxes" AND $key!="europ" AND $key!="meast" AND $key!="music") {
        $where.="OR class.id=$value ";
    }
}
$result=$db->get_my_schedule($where);
$row=mysql_num_rows($result);

if ($row<1) {
    echo '<div class="box attention">You don\'t have any classes selected from the schedule.</div>';
    redirect('schedule');
    include_once('includes/footer.php');
    die;
}
$day="";
echo '<div class="my_sched">';
for ($i=0;$i<$row;$i++) {
    if ($day!=date('l',strtotime(mysql_result($result, $i, 'day')))) {
        $day=date('l',strtotime(mysql_result($result, $i, 'day')));
        echo "<br /><h2>$day</h2>";
    }
    echo '<div class="time">'.  date('g:i A',strtotime(mysql_result($result, $i, 'day'))).'</div>';
    echo '<div class="room">'.mysql_result($result, $i, 'room.name').'</div>';
    echo '<div class="name">'.mysql_result($result, $i, 'class.name').'</div>';
    echo '<div class="prof">'.mysql_result($result, $i, 'user.sca_first').' '.mysql_result($result, $i, 'user.sca_last').'</div>';
}
echo '</div>';
echo '<input class="button" name="checkboxes" type="submit" value="Return to Schedule" />';
echo '</form>';
include_once('includes/footer.php');
?>
