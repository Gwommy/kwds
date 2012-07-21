<?php
/*
 * KWDS Contact Page
 */
require('includes/init.php');

$result=$db->get_staff($kwds['id']);

require('header.php');
?>
<h1>KWDS <?php echo $kwds['id']; ?> Staff Members</h1>
<?php
if (count($result) > 0) {
    foreach ($result as $row) {
        $uid = $row['role.user_id'];
        echo '<div class="staff"><h1>'.  $row['JobName'].'</h1>';
        echo '<p><label>Mundane Name: </label><a href="profile.php?id='.$uid.'">'.$row['MundaneFirst'].' '.$row['MundaneLast'].'</a></p>';
        echo '<p><label>SCA Name: </label><a href="profile.php?id='.$uid.'">'.$row['SCAFirst'].' '.$row['SCALast'].'</a></p>';
        echo '<p><label>Email: </label>'.$row['email'].'</p></div>';
    }
}
?>

<?php include('footer.php'); ?>