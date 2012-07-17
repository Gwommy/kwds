<?php
/*
 * KWDS Header Page
 */
ob_start();
// Include and setup the database
require_once('includes/db.class.php');
$db=new db();

// Include extra functions and start the session
require_once('includes/functions.php');
require_once('includes/session.php');
$session = new Session;

// Determine which KWDS to display
if (!isset($_GET['kwds']) OR !is_numeric($_GET['kwds'])) {
    $_GET['kwds']=0;
}
// Get KWDS information and store it in variables
$kwds = $db->get_kwds($_GET['kwds']);
/*
Kept for now as a reference in refactoring.  Remove when done.
$kadd=mysql_result($result, 0, 'address');
$karms=mysql_result($result, 0, 'arms');
$kattraction=mysql_result($result, 0, 'attractions');
$kcity=mysql_result($result, 0, 'city');
$kcountry=mysql_result($result, 0, 'country');
$kdesc=mysql_result($result, 0, 'description');
$kedate=mysql_result($result, 0, 'end_date');
$kfood=mysql_result($result, 0, 'food');
$kkingdom=mysql_result($result, 0, 'kingdom.name');
$klodging=mysql_result($result, 0, 'lodging');
$kmerchant=mysql_result($result, 0, 'merchants');
$kname=mysql_result($result, 0, 'name');
$kpark=mysql_result($result, 0, 'parking');
$kproceed=mysql_result($result, 0, 'proceedings');
$kreg=mysql_result($result, 0, 'registration');
$ksdate=mysql_result($result, 0, 'start_date');
$kstate=mysql_result($result, 0, 'state');
$kzip=mysql_result($result, 0, 'zip');
$num=mysql_result($result, 0, 'id');*/
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Known World Dance and Music Symposium</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" href="kwds.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="print.css" type="text/css" media="print" />
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <?php if ($kwds['banner'] == "") { ?>
                <h1>
                    <div class="float_left inline"><img src="./images/kingdoms/<?php echo $kwds['arms']; ?>" alt="<?php echo $kwds['kingdom']; ?>" title="<?php echo $kwds['kingdom']; ?> Kingdom"/></div>
                    <a href="http://kwds.org">Known World Dance and Music Symposium <br /><?php echo roman($kwds['id']); ?></a>
                </h1>
                <h2><?php echo date('M j, Y', strtotime($kwds['start_date'])).' to '.date('M j, Y', strtotime($kwds['end_date'])); ?></h2>
                <?php } else { ?>

                <div id="banner">
                    <div class="inline"><img src="./images/kingdoms/<?php echo $kwds['arms']; ?>" alt="Kingdom Arms" /></div>
                    <a href="http://kwds.org"><img src="images/header/<?php echo $kwds['banner']; ?>" title="KWDS<?php echo $kwds['id']; ?>" /></a>
                </div>
                <?php } ?>
            </div>
            <div id="main_content">
                <?php
                require_once('includes/menu.php');
                require_once('includes/side_menu.php');
                ?>
                <div id="container">
                    