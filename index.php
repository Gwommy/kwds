<?php
/*
 * KWDS Index Home Page
 */
require_once('includes/header.php');
?>
    <h1 class="header"><a href="index.php?kwds=<?php echo $num ?>" title="Home">KWDS <? echo $num ?></a></h1>
    <div class="entry">
        <div class="address">
            <h2><?php echo $kname; ?></h2>
            <h2><?php echo $kadd ?></h2>
            <h2><?php echo $kcity;
                if ($kcity!="" AND $kstate!="") {
                    echo ', ';
                }
                echo $kstate.' '. $kzip ?></h2>
            <h2><?php echo $kcountry ?></h2>
        </div>
        <div class="kwds_description">
            <p><?php echo $kdesc ?></p>
        </div>
    </div>


<?php
include_once('includes/footer.php');
?>