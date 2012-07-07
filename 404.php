<?php
/*
 * KWDS 404 Page Not Found
 */
require_once('includes/header.php');
?>
<h1>404 Page Not Found</h1>
<div class="box warning">The page you are trying to view has not been documented.</div>
<?php
redirect('index');
include_once('includes/footer.php');
?>
