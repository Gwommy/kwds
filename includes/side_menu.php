<div id="left_sidebar">
    <?php if ($session->isLoggedIn()) {
        global $_SESSION;
        echo '<div class="welcome">Welcome, '.$db->get_username($_SESSION['user_id']).'!</div>';
    } ?>
    <h2>Main Menu</h2>
    <ul>
        <li><a href="about.php?kwds=<?php echo $kwds['id']; ?>">About</a></li>
        <li><a href="classes.php?kwds=<?php echo $kwds['id']; ?>">Class Listing</a></li>
        <li><a href="schedule.php?kwds=<?php echo $kwds['id']; ?>">Class Schedule</a></li>
        <li><a href="contacts.php?kwds=<?php echo $kwds['id']; ?>">Contacts</a></li>
        <li><a href="index.php?kwds=<?php echo $kwds['id']; ?>">Directions</a></li>
        <li><a href="food.php?kwds=<?php echo $kwds['id']; ?>">Food</a></li>
        <li><a href="attractions.php?kwds=<?php echo $kwds['id']; ?>">Local Attractions</a></li>
        <li><a href="lodging.php?kwds=<?php echo $kwds['id']; ?>">Lodging</a></li>
        <li><a href="index.php?kwds=<?php echo $kwds['id']; ?>">Main Page(Home)</a></li>
        <li><a href="merchants.php?kwds=<?php echo $kwds['id']; ?>">Merchants</a></li>
        <li><a href="parking.php?kwds=<?php echo $kwds['id']; ?>">Parking</a></li>
        <li><a href="proceedings.php?kwds=<?php echo $kwds['id']; ?>">Proceedings</a></li>
        <li><a href="registration.php?kwds=<?php echo $kwds['id']; ?>">Registration</a></li>
        <li><a href="teacher.php?kwds=<?php echo $kwds['id']; ?>">Teachers</a></li>
    </ul>

    <h2>User Options</h2>
    <ul>
        <?php if (!$session->isLoggedIn()) { ?>
        <li><a href="register.php">Register</a></li>
        <li><a href="login.php">Login</a></li>
        <?php } else { ?>
        <li><a href="group.php">Add a SCA Group</a></li>
            <?php
            if (can_add_rooms($_SESSION['user_id']) && $kwds['id'] >= $db->get_kwds_number() || is_super_user()) {
                echo '<li><a href="fees.php?kwds='.$kwds['id'].'">Add a Fee</a></li>';
                echo '<li><a href="room.php?kwds='.$kwds['id'].'">Add a Room</a></li>';
                echo '<li><a href="class_schedule.php?kwds='.$kwds['id'].'">Edit Class Schedule</a></li>';
            }
            if ((is_autocrat($_SESSION['user_id'], $kwds['id']) && $kwds['id'] >= $db->get_kwds_number()) || is_super_user()) {
                echo '<li><a href="kwds.php?kwds='.$kwds['id'].'">Edit KWDS Site Info</a></li>';
                echo '<li><a href="staff.php?kwds='.$kwds['id'].'">Edit Staff</a></li>';
            }
            ?>
        <li><a href="class.php">Submit a Class</a></li>
        <li><a href="updates.php">Updates</a></li>
        <li><a href="profile.php">View Profile</a></li>
        <li><a href="logout.php">Logout</a></li>
        <?php } ?>
    </ul>

    <h2>Upcoming Events</h2>
    <ul>
    <?php foreach ($db->get_future_kwds() as $row) {
        $title = $row['city'];
        if ($row['city'] != "" && $row['state'] != "") $title .= ', '; 
        $title .= $row['state']; 
        if ($row['state'] != "" && $result['country'] != "") $title .= ', ';
        $title .= $row['country'];
        ?>
        <li>
            <a href="index.php?kwds='<?php echo $row['id']; ?>'" title="<?php echo $title; ?>">
                KWDS '<?php echo roman($row['id']); ?> ( <?php echo date('Y', strtotime($row['end_date'])); ?> )
            </a>
        </li>
    <?php } ?>
    </ul>
        
    <h2>Previous Events</h2>
    <ul>
    <?php foreach ($db->get_previous_kwds() as $row) { 
        $title = $row['city'];
        if ($row['city'] != "" && $row['state'] != "") $title .= ', '; 
        $title .= $row['state']; 
        if ($row['state'] != "" && $result['country'] != "") $title .= ', ';
        $title .= $row['country'];
        ?>
        <li>
            <a href="index.php?kwds='<?php echo $row['id']; ?>'" title="<?php echo $title; ?>">
                KWDS '<?php echo roman($row['id']); ?> ( <?php echo date('Y', strtotime($row['end_date'])); ?> )
            </a>
        </li>
    <?php } ?>
    </ul>

    <h2>Links</h2>
    <ul>
        <li><a href="http://www.rendancedb.org" title="Renaissance Dance Database" target="_blank">Rendance Database</a></li>
        <li><a href="http://www.sca.org/" title="Society for Creative Anachronism, Inc." target="_blank">SCA</a></li>
        <li><a href="http://www.pbm.com/~lindahl/dance.html" title="SCA Renaissance Dance" target="_blank">SCA Dance</a></li>
    </ul>
</div>