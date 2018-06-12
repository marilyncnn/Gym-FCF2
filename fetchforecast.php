<?php
$brand=$_GET["brand"];
$country=$_GET["country"];
$fc=$_GET["fc"];
$year=$_GET["year"];
$channel=$_GET["channel"];
$plan=$_GET['plan'];


// Initialize variable for database credentials
$dbhost = 'localhost';
$dbuser = 'root';
$dbpass = '';
$dbname = 'feature-code';

//Create database connection
$dblink = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

//Check connection was successful
if ($dblink->connect_errno) {
    printf("Failed to connect to database");
    exit();
}
#echo "before sql";
#$sql="SELECT * FROM forecast";
$sql="SELECT forecast.*, onorder.Unit_Recs FROM forecast
LEFT JOIN onorder ON forecast.Year = onorder.Year and forecast.Week = onorder.Week
and forecast.Brand = onorder.Brand AND forecast.Country = onorder.Country
and forecast.Channel = onorder.Channel and forecast.FC = onorder.FC";

$where=" WHERE forecast.Year=" . $year. " AND forecast.Brand='". $brand ."' AND forecast.Channel='" . $channel ."' AND forecast.Country='" .$country.
"' AND forecast.FC='". $fc."' AND forecast.Plan='".$plan."'";
#" OR Plan='LY')";""

//(Plan='".$plan."' OR Plan='LY')";
$sql=$sql . $where;
//echo $sql;
//echo "SELECT * FROM Forecast " . $where;

//Fetch rows
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
