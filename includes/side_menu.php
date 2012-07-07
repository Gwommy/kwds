<div id="left_sidebar">
    <?php if ($session->isLoggedIn()) {
        global $_SESSION;
        echo '<div class="welcome">Welcome, '.$db->get_username($_SESSION['user_id']).'!</div>';
    } ?>
    <h2>Main Menu</h2>
    <ul>
        <li><a href="about.php?kwds=<?php echo $num ?>">About</a></li>
        <li><a href="classes.php?kwds=<?php echo $num ?>">Class Listing</a></li>
        <li><a href="schedule.php?kwds=<?php echo $num ?>">Class Schedule</a></li>
        <li><a href="contacts.php?kwds=<?php echo $num ?>">Contacts</a></li>
        <li><a href="index.php?kwds=<?php echo $num ?>">Directions</a></li>
        <li><a href="food.php?kwds=<?php echo $num ?>">Food</a></li>
        <li><a href="attractions.php?kwds=<?php echo $num ?>">Local Attractions</a></li>
        <li><a href="lodging.php?kwds=<?php echo $num ?>">Lodging</a></li>
        <li><a href="index.php?kwds=<?php echo $num ?>">Main Page(Home)</a></li>
        <li><a href="merchants.php?kwds=<?php echo $num ?>">Merchants</a></li>
        <li><a href="parking.php?kwds=<?php echo $num ?>">Parking</a></li>
        <li><a href="proceedings.php?kwds=<?php echo $num ?>">Proceedings</a></li>
        <li><a href="registration.php?kwds=<?php echo $num ?>">Registration</a></li>
        <li><a href="teacher.php?kwds=<?php echo $num ?>">Teachers</a></li>
    </ul>

    <h2>User Options</h2>
    <ul>
        <?php if (!$session->isLoggedIn()) { ?>
        <li><a href="register.php">Register</a></li>
        <li><a href="login.php">Login</a></li>
        <?php } else { ?>
        <li><a href="group.php">Add a SCA Group</a></li><?php
            if (can_add_rooms($_SESSION['user_id']) AND $num>=$db->get_kwds_number() OR is_super_user()) {
                echo '<li><a href="fees.php?kwds='.$num.'">Add a Fee</a></li>';
                echo '<li><a href="room.php?kwds='.$num.'">Add a Room</a></li>';
                echo '<li><a href="class_schedule.php?kwds='.$num.'">Edit Class Schedule</a></li>';
            }
            if ((is_autocrat($_SESSION['user_id'], $num) AND $num>=$db->get_kwds_number()) OR is_super_user()) {
                echo '<li><a href="kwds.php?kwds='.$num.'">Edit KWDS Site Info</a></li>';
                echo '<li><a href="staff.php?kwds='.$num.'">Edit Staff</a></li>';
            } ?>
        <li><a href="class.php">Submit a Class</a></li>
        <li><a href="updates.php">Updates</a></li>
        <li><a href="profile.php">View Profile</a></li>
        <li><a href="logout.php">Logout</a></li>
        <?php } ?>
    </ul>

    <h2>Upcoming Events</h2>
    <?php
        $result = $db->get_future_kwds();
        kwds_links($result);
    ?>

    <h2>Previous Events</h2>
    <?php
        $result = $db->get_previous_kwds();
        kwds_links($result);
    ?>
    <h2>Links</h2>
    <ul>
        <li><a href="http://www.rendancedb.org" title="Renaissance Dance Database" target="_blank">Rendance Database</a></li>
        <li><a href="http://www.sca.org/" title="Society for Creative Anachronism, Inc." target="_blank">SCA</a></li>
        <li><a href="http://www.pbm.com/~lindahl/dance.html" title="SCA Renaissance Dance" target="_blank">SCA Dance</a></li>
    </ul>
</div>

<?php
function kwds_links($result) {
    $row = mysql_num_rows($result);
    echo'<ul>';
    for ($i=0;$i<$row;$i++) {
        echo '    <li><a href="index.php?kwds='.mysql_result($result, $i, 'id').'" title="'.mysql_result($result, $i, 'city');
        if (mysql_result($result, $i, 'city')!="" AND mysql_result($result, $i, 'state')!="") { echo', ';}
        echo mysql_result($result, $i, 'state');
        if (mysql_result($result, $i, 'state')!="" AND mysql_result($result, $i, 'country')!="") { echo', ';}
        echo mysql_result($result, $i, 'country'). '">KWDS '.roman(mysql_result($result, $i, 'id'));
        echo' ('.date('Y', strtotime(mysql_result($result, $i, 'end_date'))).')</a></li>';
    }
    echo'</ul>';
}
?>