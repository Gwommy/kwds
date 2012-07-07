<?php
/*
 * KWDS User Profile Page
 */
require_once('includes/header.php');

// Retrieve the user id from the web address, otherwise set it to the user's id
$id = (isset($_SESSION['user_id'])) ? $_SESSION['user_id'] : 0;
$id = (isset($_GET['id'])) ? $_GET['id'] : $id;

$result = $db->get_user_info($id);
if (mysql_num_rows($result) == 1) {
    $first = mysql_result($result, 0, 'first');
    $last = mysql_result($result, 0, 'last');
    $nick = mysql_result($result, 0, 'nickname');
    $sfirst = mysql_result($result, 0, 'sca_first');
    $slast = mysql_result($result, 0, 'sca_last');
    $pre = mysql_result($result, 0, 'prefix.name');
    $email = mysql_result($result, 0, 'email');
    $group = mysql_result($result, 0, 'group.name');
    $gurl = mysql_result($result, 0, 'group.url');
    $kingdom = mysql_result($result, 0, 'kingdom.name');
    $kurl = mysql_result($result, 0, 'kingdom.url');
    $about = mysql_result($result, 0, 'about');
    $title = mysql_result($result, 0, 'title.name');
?>
    <h1>User Profile
    <?php
    if ($id == $_SESSION['user_id']) { ?>
        <form action="user.php" method="post">
            <input type="hidden" name="uid" value="<?php echo $_SESSION['user_id'] ?>" />
            <a href="edit.php"><input type="submit" name="edit_user" class="button edit" value="Edit Profile" /></a>
        </form>
        <?php
    }
    ?>
</h1>
<div class="profile">
    <ul>
        <li><label for="name">Mundane Name: </label><?php echo $pre . " " . $first . " " . $last; ?></li>
        <li><label>SCA Name: </label> <?php echo $title . " " . $sfirst . " " . $slast ?></li>
        <li><label>Email: </label> <?php echo $email ?></li>
        <li><label>Group: </label> <a href="<?php echo $gurl ?>"><?php echo $group ?></a></li>
        <li><label>Kingdom: </label> <a href="<?php echo $kurl ?>"><?php echo $kingdom ?></a></li>
    </ul>
    <div class="bio">
        <h3>Biography:</h3>
        <p><?php echo $about; ?></p>
    </div>
    <?php
        $result=$db->get_user_jobs($id);
        if (mysql_num_rows($result) >0) {
            echo '
    <div class="jobs">
        <h2>KWDS Staff</h2>
        <ul>';
            for ($i=0;$i<mysql_num_rows($result); $i++) {
                echo '
            <li><label>KWDS '.mysql_result($result, $i, 'kwds.id').': </label> '.mysql_result($result, $i, 'job.name').'</li>';
            }
            echo '
        </ul>
    </div>';
        }
        $result=$db->get_user_classes($id);
        if (mysql_num_rows($result)>0) {
            echo '
    <div class="classes">
        <h2>Classes Submitted</h2>
        <ul>';
            for ($i=0;$i<mysql_num_rows($result); $i++) {
                echo'
            <li><a href="schedule.php?kwds='.  mysql_result($result, $i, 'kwds_id').'&id='.  mysql_result($result, $i, 'id').'"><span class="bold">KWDS '.mysql_result($result, $i, 'kwds_id').'</span>: '.mysql_result($result, $i, 'name').'</a></li>';
            }
            echo '
        </ul>
    </div>';
        }
    ?>
</div>
<?php
} else {
    echo '<div class="box error">The user profile you are trying to view does not exist.</div>';
    redirect('index');
}

//user.id, user.first, user.last, sca_first, sca_last, title.name, prefix.name, nickname, email, group.name, kingdom.name, about
include_once('includes/footer.php');
?>
