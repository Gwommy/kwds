<?php
/*
 * KWDS DATABASE CLASS
 */

class db {

    var $connection;

    // Select and connect to the database
    function db() {
        require_once('includes/config.php');
        $this->connection = @mysql_connect(DB_HOST, DB_USER, DB_PASS) or die('Unable to connect to database!');
        mysql_select_db(DB_NAME) or die('Unable to select database!');
    }

    // Deletes a fee from the fees table
    function delete_fee($id) {
        return $this->query("DELETE FROM fees WHERE id='$id'");
    }

    // Delete password reset page
    function delete_reset($id) {
        $this->query("DELETE FROM password WHERE user_id='$id'");
    }

    // Remove someone from a role
    function delete_role($id) {
        return $this->query("DELETE FROM role WHERE role_id='$id'");
    }

    // Checks to see if email exists in the system
    function email_exist($email) {
        $result=$this->query("SELECT email FROM user WHERE email='$email'");
        if (mysql_num_rows($result)==1) {
            return true;
        }
        return false;
    }

    // Returns all kinds of class information for a particular KWDS
    function get_class_info($kwds) {
        return $this->query("SELECT * FROM aerobic, class, difficulty, era, ".DB_NAME.".group, kingdom, prefix, room, title, type, user
                WHERE aerobic.id=aerobic_id AND class.kwds_id='$kwds' AND difficulty_id=difficulty.id AND era_id=era.id
                AND user.group_id=group.id AND kingdom_id=kingdom.id AND prefix_id=prefix.id AND room_id=room.id
                AND title_id=title.id AND type_id=type.id AND class.user_id=user.id ORDER BY class.name");
    }

    // Returns all kinds of class information for a particular KWDS
    function get_class($id) {
        return $this->query("SELECT * FROM aerobic, class, difficulty, era, ".DB_NAME.".group, kingdom, prefix, room, title, type, user
                WHERE aerobic.id=aerobic_id AND difficulty_id=difficulty.id AND era_id=era.id AND class.id='$id'
                AND user.group_id=group.id AND kingdom_id=kingdom.id AND prefix_id=prefix.id AND (room_id=room.id or room_id='0')
                AND title_id=title.id AND type_id=type.id AND class.user_id=user.id
                GROUP BY room_id ORDER BY class.name");
    }

    // Returns a list of classes from a particular room for a certain day
    function get_class_rooms($id, $day, $where="type_id>0") {
        return $this->query("SELECT class.name, class.id, description, CONCAT(user.sca_first,' ',sca_last) as user, type_id, difficulty_id, day, hours, ((((DATE_FORMAT(day,'%k')-9)*60)+DATE_FORMAT(day,'%i'))*1.15) as time
                FROM class, user WHERE room_id='$id' AND (DATE_FORMAT(day,'%j')+1)='$day' AND user_id=user.id AND ($where)");
    }

    // Returns the directions for a particular KWDS
    function get_directions($num) {
        return $this->query("SELECT directions FROM kwds WHERE id='$num'");
    }

    function get_fee($id) {
        return $this->query("SELECT * FROM fees WHERE id='$id'");
    }

    function get_fees($id) {
        return $this->query("SELECT * FROM fees, fee_type WHERE kwds_id='$id' and fee_type_id=fee_type.id ORDER BY prereg DESC, fee_type_id ASC");
    }

    // Return a list of information for all future KWDS events
    function get_future_kwds() {
        return $this->query("SELECT * FROM ".DB_NAME.".kwds WHERE NOW() <= end_date");
    }

    // Returns information from one particular KWDS event
    function get_kwds($kwds) {
        $result = $this->query("SELECT * FROM kwds, kingdom WHERE kwds.id='$kwds' AND kingdom_id=kingdom.id");
        if (mysql_num_rows($result) != 1) {
            $result = $this->query("SELECT * FROM kwds, kingdom WHERE now() < end_date AND kingdom_id=kingdom.id LIMIT 1");
        }
        return $result;
    }

    // Returns the number of the next KWDS event
    function get_kwds_number() {
        $result = $this->query("SELECT id FROM kwds WHERE now() < end_date LIMIT 1");
        return mysql_result($result, 0, 'id');
    }

    // Retrieves a list of KWDS's for which classes can still be submitted for
    function get_kwds_submissions() {
        return $this->query("SELECT id, CONCAT('KWDS ',id) as name FROM ".DB_NAME.".kwds WHERE NOW() <= ADDTIME(class_date, '23:59:00')");
    }

    // Returns a list of the names and IDs from a table called $type
    function get_list($type) {
        return $this->query("SELECT name, id FROM $type ORDER BY name");
    }

    // Returns a list of class information that you selected
    function get_my_schedule($where) {
        return $this->query("SELECT * FROM class,user, room WHERE user.id=user_id AND room_id=room.id AND ($where) ORDER BY day");
    }

    // Returns a list of information for the previous KWDS events
    function get_previous_kwds() {
        return $this->query("SELECT * FROM ".DB_NAME.".kwds WHERE end_date < NOW()");
    }

    function get_role($id) {
        return $this->query("SELECT username, job.name, kwds.id, job.id, user_id FROM kwds, role, job, user
            WHERE user_id=user.id AND job.id=job_id AND kwds.id=kwds_id AND role_id='$id'");
    }

    // Returns a list of rooms for a particular KWDS
    function get_rooms($id) {
        return $this->query("SELECT name, room.id FROM room WHERE kwds_id='$id' ORDER BY name");
    }

    // Returns a SQL result list of all staff members of a particular KWDS
    function get_staff($num) {
        return $this->query("SELECT CONCAT(username,'(',job.name,')') as name, role.role_id as id, job.name, prefix.name, user.first, user.last, title.name, user.email, sca_first, sca_last, job.id, role.user_id
            FROM title, prefix, user, role, job, kwds
            WHERE title.id=title_id AND prefix.id=prefix_id AND user.id=user_id AND job.id=job_id AND kwds.id=kwds_id AND kwds.id = $num
            ORDER BY job.id");
    }

    // Returns a list of teachers for a particular KWDS
    function get_teachers($id) {
        return $this->query("SELECT * FROM user, class WHERE user_id=user.id and kwds_id='$id' ORDER BY sca_first, sca_last, last, first,class.name");
    }

    //Returns a list of classes that have not been scheduled yet
    function get_unscheduled_classes($num) {
        return $this->query("SELECT * FROM class WHERE kwds_id='$num' AND (room_id IS NULL or room_id=0) ORDER BY name");

    }

    // Returns a list of the updates
    function get_updates() {
        return $this->query("SELECT update.user_id, update.description, date, username FROM ".DB_NAME.".update, user WHERE user.id=user_id ORDER BY update.id DESC");
    }

    //Returns all information for a user
    function get_user($id) {
        return $this->query("SELECT * FROM user WHERE user.id='$id'");
    }

    // Returns the user's address
    function get_user_address($id) {
        return $this->query("SELECT address, city, state, country, zip FROM user WHERE id='$id'");
    }

    // Returns a list of a submitted classes for a user
    function get_user_classes($id) {
        return $this->query("SELECT class.name, class.id, kwds_id FROM class, user WHERE class.user_id='$id' AND class.user_id=user.id ORDER BY kwds_id, class.name");
    }

    // Returns profile information for a particular user
    function get_user_info($id) {
        return $this->query("SELECT user.id, user.first, user.last, sca_first, sca_last, title.name, prefix.name, nickname, email, group.name, group.url, kingdom.name, kingdom.url, about
            FROM user, ".DB_NAME.".group, title, prefix, kingdom
            WHERE title.id=title_id AND prefix.id=prefix_id AND user.id='$id' AND group.id=user.group_id AND kingdom.id=group.kingdom_id");
    }

    // Returns a list of jobs that a user has at a particular KWDS
    function get_user_job($id, $kwds) {
        return $this->query("SELECT job.id FROM ".DB_NAME.".kwds, role, job, user
            WHERE job.id=job_id AND kwds.id=kwds_id AND user_id=user.id AND user.id='$id' AND kwds.id='$kwds' ORDER BY job.id, kwds.id DESC");
    }

    // Returns a list of people and their jobs at a particular KWDS
    function get_user_jobs($id) {
        return $this->query("SELECT kwds.id, job.name FROM ".DB_NAME.".kwds, role, job, user
            WHERE user.id='$id' AND user_id=user.id AND job_id=job.id AND kwds.id=kwds_id");
    }

    // Returns a list of usernames from the database
    function get_user_list() {
        return $this->query("SELECT username AS name, id FROM user ORDER BY username");
    }

    // Retrieve's a user's nickname, SCA name, mundane name, or username
    function get_username($id) {
        $result = $this->query("SELECT nickname, username, sca_first, first FROM user WHERE user.id='$id'");
        if (mysql_num_rows($result) > 0) {
            if (mysql_result($result, 0, 'nickname') != "") {
                $name = mysql_result($result, 0, 'nickname');
            } elseif (mysql_result($result, 0, 'sca_first') != "") {
                $name = mysql_result($result, 0, 'sca_first');
            } elseif (mysql_result($result, 0, 'first') != "") {
                $name = mysql_result($result, 0, 'first');
            } elseif (mysql_result($result, 0, 'username') != "") {
                $name = mysql_result($result, 0, 'username');
            } else {
                $name = mysql_result($result, 0, 'email');
            }
            return ucfirst($name);
        }
        else {
            return "Unidentified User";
        }
    }

    // Add a new class to the database
    function insert_class($aero, $desc, $diff, $era, $fee, $hours, $kwds, $limit, $name, $type, $url, $user) {
        $result = $this->query("INSERT INTO ".DB_NAME.".class (aerobic_id, description, difficulty_id, era_id, fee, hours, kwds_id, class.limit, name, type_id, url, user_id)
            VALUES ('$aero', '$desc', '$diff', '$era', '$fee', '$hours', '$kwds','$limit', '$name', '$type', '$url', '$user')");
    }

    // Add a new fee to the database
    function insert_fee($kwds, $name, $price, $desc, $pre, $type) {
        $result=$this->query("INSERT INTO fees (description, kwds_id, name, prereg, price, fee_type_id) VALUES ('$desc', '$kwds', '$name', '$pre', '$price', '$type')");
    }

    // Add a new group to the database
    function insert_group($name, $url, $kingdom) {
        $result=$this->query("INSERT INTO ".DB_NAME.".group (name, url, kingdom_id) VALUES ('$name', '$url', '$kingdom')");
    }

    // Add a new role to the database
    function insert_role($kwds, $user, $job) {
        $result=$this->query("INSERT INTO role (kwds_id, job_id, user_id) VALUES ('$kwds', '$job', '$user')");
    }

    // Add a new room to the database
    function insert_room($name, $building, $size, $kwds, $notes) {
        $result=$this->query("INSERT INTO room (name, building, size, kwds_id, note)
            VALUES ('$name', '$building', '$size', '$kwds', '$notes')");
    }

    // Add a new update to the database
    function insert_update($id, $desc) {
        $result=$this->query("INSERT INTO ".DB_NAME.".update (user_id, description, date) VALUES ('$id', '$desc', NOW())");
    }

    // Add a new user to the database
    function insert_user($address, $about, $city, $country, $email, $first_name, $group, $last_name, $nickname, $password, $phone, $prefix, $sca_first, $sca_last, $state, $title, $username, $zip) {
        $insert = "INSERT INTO user (email, password, username";
        $values = "VALUES ('$email', '$password', '$username'";
        $insert .= ( $address == "") ? "" : ", address";
        $values .= ( $address == "") ? "" : ", '$address'";
        $insert .= ( $about == "") ? "" : ", about";
        $values .= ( $about == "") ? "" : ", '$about'";
        $insert .= ( $city == "") ? "" : ", city";
        $values .= ( $city == "") ? "" : ", '$city'";
        $insert .= ( $country == "") ? "" : ", country";
        $values .= ( $country == "") ? "" : ", '$country'";
        $insert .= ( $first_name == "") ? "" : ", first";
        $values .= ( $first_name == "") ? "" : ", '$first_name'";
        $insert .= ( $group == "") ? "" : ", group_id";
        $values .= ( $group == "") ? "" : ", '$group'";
        $insert .= ( $last_name == "") ? "" : ", last";
        $values .= ( $last_name == "") ? "" : ", '$last_name'";
        $insert .= ( $nickname == "") ? "" : ", nickname";
        $values .= ( $nickname == "") ? "" : ", '$nickname'";
        $insert .= ( $phone == "") ? "" : ", phone";
        $values .= ( $phone == "") ? "" : ", '$phone'";
        $insert .= ( $prefix == "") ? "" : ", prefix_id";
        $values .= ( $prefix == "") ? "" : ", '$prefix'";
        $insert .= ( $sca_first == "") ? "" : ", sca_first";
        $values .= ( $sca_first == "") ? "" : ", '$sca_first'";
        $insert .= ( $sca_last == "") ? "" : ", sca_last";
        $values .= ( $sca_last == "") ? "" : ", '$sca_last'";
        $insert .= ( $state == "") ? "" : ", state";
        $values .= ( $state == "") ? "" : ", '$state'";
        $insert .= ( $title == "") ? "" : ", title_id";
        $values .= ( $title == "") ? "" : ", '$title'";
        $insert .= ( $zip == "") ? "" : ", zip";
        $values .= ( $zip == "") ? "" : ", '$zip'";
        $insert .= ") ";
        $values .= ")";
        $result = $this->query($insert . $values);
    }

    // Verifies user login information matchese the database information
    function login($username, $pass, $remember) {
        global $session;
        $result = $this->query("SELECT id FROM user WHERE (username='$username' OR email='$username') AND password='$pass'");
        if (mysql_num_rows($result) == 1) {
            $session->login(mysql_result($result, 0, 'user.id'), $remember);
        }
        return $result;
    }

    // Use this function to call any query
    function query($query_string) {
        $result = mysql_query($query_string) or die('Error is query: ' . $query_string . '.' . mysql_error());
        return $result;
    }

    // Removes the room from a class to take it off the schedule
    function remove_from_schedule($id) {
        $result=$this->query("UPDATE class SET room_id=0 WHERE class.id='$id'");
    }

    // Function that lets the database know you need your password changed
    function setup_password($email, $random) {
        $result = $this->query("SELECT id FROM user WHERE email='$email'");
        if (mysql_num_rows($result)==1) {
            $uid=mysql_result($result, 0, 'id');
            $this->query("INSERT INTO password (user_id, value) VALUES ('$uid', '$random')");
            return;
        }
        echo '<div class="box error">That email does not exist in our system.</div>';
    }

    // Update the information of a class
    function update_class($aero,$cid,$date,$desc,$diff,$era,$hours,$name,$room,$type) {
        $result=$this->query("UPDATE class SET aerobic_id='$aero', day='$date',description='$desc',difficulty_id='$diff',era_id='$era',hours='$hours',name='$name',room_id='$room',type_id='$type' WHERE id='$cid'");
    }

    function update_fee($desc, $id, $name, $pre, $price, $type) {
        $result=$this->query("UPDATE fees SET description='$desc', name='$name', prereg='$pre', price='$price', fee_type_id='$type' WHERE id='$id'");
    }

    // Update the KWDS site information
    function update_kwds($address,$banner,$city,$class_date,$country,$desc,$dir,$end_date,$facebook,$group,$kingdom,$kwds,$name,$start_date,$state,$status,$zip) {
        $result=$this->query("UPDATE kwds SET address='$address', banner='$banner', city='$city', class_date='$class_date', country='$country', description='$desc', directions='$dir', end_date='$end_date', facebook='$facebook',group_id='$group',kingdom_id='$kingdom', name='$name', start_date='$start_date',state='$state',status_id='$status',zip='$zip' WHERE id='$kwds'");
    }

    // Update user's password
    function update_password($id, $email, $pass) {
        $result = $this->query("UPDATE user SET password='$pass' WHERE id='$id' AND email='$email'");
    }

    // Update a peron's role/job
    function update_role($role, $user, $job, $kwds) {
        $result = $this->query("UPDATE role SET user_id='$user', job_id='$job', kwds_id='$kwds' WHERE role_id='$role'");
    }

    // Update a user's profile infomation
    function update_user($about, $address, $city, $country, $email, $first, $group_id, $id, $last, $nickname, $password, $phone, $prefix_id, $sca_first, $sca_last, $state, $title_id, $username, $zip) {
        $result = $this->query("UPDATE user SET about='$about', address='$address', city='$city', country='$country', email='$email', first='$first', group_id='$group_id', last='$last', nickname='$nickname', password='$password', phone='$phone', prefix_id='$prefix_id', sca_first='$sca_first', sca_last='$sca_last', state='$state', title_id='$title_id', username='$username', zip='$zip' WHERE user.id='$id'");
    }

    // Verify that the email was entered correctly and matches the password reset page
    function verify_email($x, $email) {
        $result=$this->query("SELECT user.id from user, password WHERE user_id=user.id AND user.email='$email' AND value='$x'");
        if (mysql_num_rows($result)==1) {
            return mysql_result($result, 0, 'id');
        }
        return 0;
    }

    // Verify that the value for changing password is in the database
    function verify_value($x) {
        $result=$this->query("SELECT id FROM password WHERE value='$x'");
        if (mysql_num_rows($result)==1) {
            return true;
        }
        return false;
    }
}

?>