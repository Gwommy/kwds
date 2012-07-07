<?php
/*
 * KWDS Logout Page
 */
require_once('includes/session.php');
$session = new Session;
$session->logout();

require_once('./includes/header.php');
$session->logout();

echo '<div class="box success">You have successfully logged out!</div>';
redirect('index');
?>
