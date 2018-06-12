<?php
include '../applogic/app-config.php';
include '../applogic/db-connect.php';
error_reporting(0);

#echo 'here';

$debug_mode = false; //

$brand=$_GET["brand"];
$country=$_GET["country"];
$fc=$_GET["fc"];
$year=$_GET["year"];
$channel=$_GET["channel"];
$plan=$_GET['plan'];

// Initialize variable for database credentials
/*$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'feature-code2';
*/
//Create database connection
//$dblink = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
$dblink = new mysqli($HOST, $USERNAME, $PASSWORD, $DATABASE);
//Check connection was successful
if ($dblink->connect_errno) {
    printf("Failed to connect to database");
    exit();
}


#echo "before sql";
#$sql="SELECT * FROM forecast";
/*$sql="SELECT tblforecast.*, Units, Cost, Retail FROM forecast
LEFT JOIN onorder ON tblforecast.Year = tblonorder.Yr and tblforecast.Week = tblonorder.Wk
and tblforecast.Brand = tblonorder.Division AND tblforecast.Country = 'USA'
and tblforecast.Channel = tblonorder.Chan and tblforecast.FC = tblonorder.FC";
*/
$sql="SELECT tblforecast.*, tblonorder.Units as 'oounits', tblonorder.Cost as 'ooCost', tblonorder.Retail as 'ooRetail'
FROM tblforecast LEFT JOIN tblonorder ON tblforecast.year = tblonorder.year and
tblforecast.week = tblonorder.week and tblforecast.Brand = tblonorder.brand AND tblforecast.country = tblonorder.country AND
tblforecast.channel = tblonorder.channel and tblforecast.fc = tblonorder.fc";

$where=" WHERE tblforecast.Year=" . $year. " AND tblforecast.brand='". $brand ."' AND tblforecast.channel='" . $channel ."' AND tblforecast.country='" .$country.
"' AND tblforecast.fc='". $fc."' AND tblforecast.plan='".$plan."'";
#" OR Plan='LY')";""

//(Plan='".$plan."' OR Plan='LY')";
$sql=$sql . $where;
echo $sql;
//echo "SELECT * FROM Forecast " . $where;

//Fetch rows
$result = $dblink->query($sql);

//echo $sql;
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
