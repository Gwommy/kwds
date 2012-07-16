<?php
/*
 * KWDS Directions
 */
require_once('includes/header.php');
$kadd = str_replace(" ", "+", $kwds['address']);
$kcity = str_replace(" ", "+", $kwds['city']);
$kstate = str_replace(" ", "+", $kwds['state']);
$kcountry = str_replace(" ", "+", $kwds['country']);
$kzip = str_replace(" ", "+", $kwds['zip']);
$kaddress=$kadd.',+'.$kcity.',+'.$kstate.'+'.$kzip.'+'.$kcountry;

if (isset($_SESSION['user_id'])) {
    $result = $db->get_user_address($_SESSION['user_id']);
    $uadd = str_replace(" ", "+", $result['address']);
    $ucity = str_replace(" ", "+", $result['city']);
    $ustate = str_replace(" ", "+", $result['state']);
    $ucountry = str_replace(" ", "+", $result['country']);
    $uaddress = $uadd.',+'.$ucity.',+'.$ustate.'+'.$result['zip'].'+'.$ucountry;
} else {
    $uaddress = "";
}
?>
<h1>Directions</h1>
<div class="center">
<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=<?php echo $kaddress ?>&amp;ie=UTF8&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=<?php echo $kaddress; ?>&amp;aq=&amp;sll=37.0625,-95.677068&amp;sspn=37.819897,78.662109&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear=<?php echo $kaddress; ?>&amp;z=14&amp;ll=43.080487,-73.787474" style="color:#0000FF;text-align:left">View Larger Map</a></small>
<br />
<!--<iframe width="425" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=d&amp;source=s_d&amp;saddr=portland,+MI+48875&amp;daddr=<?php echo $kaddress ?>&amp;hl=en&amp;ie=UTF8&amp;output=embed"></iframe><br /><small><a href="https://maps.google.com/maps?f=d&amp;source=embed&amp;saddr=842+kent+st,+portland,+MI+48875&amp;daddr=<?php echo $kaddress ?>&amp;hl=en&amp;aq=&amp;sll=38.949835,-90.190464&amp;sspn=0.00227,0.004801&amp;t=h&amp;mra=ls&amp;ie=UTF8&amp;ll=40.919195,-87.551585&amp;spn=3.93921,5.28379" style="color:#0000FF;text-align:left">View Larger Map</a></small>
<br />-->


<!-- USE THIS ONE
<iframe id="remote_iframe_0" name="remote_iframe_0" width="425" height="91" frameborder="0" scrolling="no" onload="_tick_ol('s')" src="http://www-igprev-opensocial.googleusercontent.com/gadgets/ifr?exp_rpc_js=1&amp;exp_track_js=1&amp;url=http%3A%2F%2Fwww.google.com%2Fig%2Fmodules%2Fdriving_directions.xml&amp;container=igprev&amp;view=default&amp;lang=en&amp;country=US&amp;sanitize=0&amp;v=d4325b45c3eac0ea&amp;up_to=<?php echo $kaddress; ?>&amp;up_country=0&amp;up_from=<?php echo $uaddress; ?>&amp;parent=http://www.google.com&amp;libs=core:core.io:core.iglegacy:auth-refresh&amp;is_signedin=1&amp;synd=igprev&amp;view=default#rpctoken=-667017968&amp;ifpctok=-667017968"></iframe>

-->

<form class="form" action="//maps.google.com/maps" id="map_form" name="v1Form" target="_blank">
    <ul>
        <li><label style="width: 30px;">To:</label><input id="saddr" maxlength="1024" name="saddr" value="<?php echo str_replace('+', ' ', $uaddress); ?>"></li>
        <li><label style="width: 30px;">From:</label><input id="daddr" maxlength="1024" name="daddr" value="<?php echo str_replace('+', ' ', $kaddress); ?>"></li>
        <li><label style="width: 30px;"></label><input class="button" type="submit" value="Get Directions"></li>
    </ul>
</form>
</div>
<?php
include_once('includes/footer.php');
?>
