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
$result=$db->get_kwds($_GET['kwds']);
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
$num=mysql_result($result, 0, 'id');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Known World Dance and Music Symposium</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" href="kwds.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="print.css" type="text/css" media="print" />
    </head>
    <body>
        <div id="wrapper">
            <div id="header">
                <?php if (mysql_result($result, 0, 'banner')=="") { ?>
                <h1>
                    <div class="float_left inline"><img src="./images/kingdoms/<?php echo $karms ?>" alt="<?php echo $kkingdom ?>" title="<?php echo $kkingdom ?> Kingdom"/></div>
                    <a href="http://kwds.org">Known World Dance and Music Symposium <br /><?php echo roman($num) ?></a>
                </h1>
                <h2><?php echo date('M j, Y', strtotime($ksdate)).' to '.date('M j, Y', strtotime($kedate)) ?></h2>
                <?php } else { ?>

                <div id="banner">
                    <div class="inline"><img src="./images/kingdoms/<?php echo $karms ?>" alt="Kingdom Arms" /></div>
                    <a href="http://kwds.org"><img src="images/header/<?php echo mysql_result($result, 0, 'banner')?>" title="KWDS<?php echo $num ?>" /></a>
                </div>
                <?php } ?>
            </div>
            <div id="main_content">
                <?php
                require_once('includes/menu.php');
                require_once('includes/side_menu.php');
                ?>
                <div id="container">
                    