<?php
/*
 * KWDS Parking
 */
require_once('includes/header.php');
if (isset($_POST['description']) AND $_POST['description']!="") {
    $db->insert_update($_SESSION['user_id'], $_POST['description']);
    echo '<div class="box success">Your update has been added!</div>';
}
?>
<?php if (isset($_SESSION['user_id'])) { ?>
<h1>Add Update</h1>
<form class="form" action="updates.php" method="post">
    <ul>
        <li><input name="description" type="textbox" /><input class="button" type="submit" name="update" value="Add Update" /> </li>
    </ul>
</form>
<h1>Updates</h1>

<?php
}
$result=$db->get_updates();
$row=mysql_num_rows($result);
for ($i=0;$i<$row;$i++) {
    echo'
<div><p><span class="bold">'.mysql_result($result, $i, 'username').' ('.date('M j, Y', strtotime(mysql_result($result, $i, 'date'))).')</span>: '.  mysql_result($result, $i, 'description').'</p>
</div>';
}
include_once('includes/footer.php');
?>
