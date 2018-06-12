<?php
include '../applogic/app-config.php';
include '../applogic/db-connect.php';

$brand=$_GET["brand"];
$fc=$_GET["fc"];
$year=$_GET["year"];
$channel=$_GET["channel"];
$country=$_GET['country'];
$plan=$_GET['plan'];
#echo $Brand
// Initialize variable for database credentials
//'http://172.24.115.30/testing/';

//Create database connection
$dblink = new mysqli($HOST, $USERNAME, $PASSWORD, $DATABASE);

//Check connection was successful
if ($dblink->connect_errno) {
    printf("Failed to connect to database");
    exit();
}
$sql="SELECT * FROM tblhistory";
$where=" WHERE Brand='". $brand ."' AND Channel='" . $channel ."' AND Country='" .$country.
"' AND Year>=" . $year . " AND FC='". $fc."'";
 //AND Plan='".$plan."'";
$sql=$sql . $where;
#echo $where;
#echo $sql;


$result = $dblink->query($sql);
#echo $sql;
//Initialize array variable
$dbdata = array();

//Fetch into associative array
while ( $row = $result->fetch_assoc())  {
    $dbdata[]=$row;
}

//Print array in JSON format
$json=json_encode($dbdata);
echo $json;

?>
