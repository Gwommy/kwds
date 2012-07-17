<?php
/*
 * KWDS Parking
 */
require_once('includes/header.php');
if (isset($_POST['description']) && $_POST['description']!="") {
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
$result = $db->get_updates();

foreach ($result as $row) {
    echo'<div><p><span class="bold">'.$result['username'].' ('.date('M j, Y', strtotime($result['date'])).')</span>: '.$result['description'].'</p></div>';
}
include_once('includes/footer.php');
?>
