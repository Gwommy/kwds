<?php
/*
 * KWDS Contact Page
 */
require_once('includes/header.php');
$result=$db->get_staff($num);
$row=mysql_num_rows($result);
?>
<h1>KWDS <?php echo $num ?> Staff Members</h1>
<?php
if ($row > 0) {
    for ($i=0; $i<$row; $i++) {
        $uid=mysql_result($result, $i, 'role.user_id');
        echo '<div class="staff"><h1>'.  mysql_result($result, $i, 'job.name').'</h1>';
        echo '<p><label>Mundane Name: </label><a href="profile.php?id='.$uid.'">'.mysql_result($result, $i, 'first').' '.mysql_result($result, $i, 'last').'</a></p>';
        echo '<p><label>SCA Name: </label><a href="profile.php?id='.$uid.'">'.mysql_result($result, $i, 'sca_first').' '.mysql_result($result, $i, 'sca_last').'</a></p>';
        echo '<p><label>Email: </label>'.mysql_result($result, $i, 'email').'</p></div>';
    }
}
include_once('includes/footer.php');