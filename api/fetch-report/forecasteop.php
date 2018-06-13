<?php
include '../../applogic/app-config.php';
include '../../applogic/db-connect.php';
error_reporting(0);


$debug_mode = false; //


$search_array = array ("brand","country","channel","Plan");

$plan = isset($_REQUEST['plan']) ? $_REQUEST['plan'] : NULL ;
$season = isset($_REQUEST['season']) ? $_REQUEST['season'] : NULL ;
$year = isset($_REQUEST['year']) ? $_REQUEST['year'] : NULL ;
$compare_plan = isset($_REQUEST['compare_plan']) ? $_REQUEST['compare_plan'] : NULL ;
$view_type = isset($_REQUEST['view']) ? $_REQUEST['view'] : NULL ;
$sqlshow = isset($_REQUEST['sql']) ? $_REQUEST['sql'] : NULL ;


$view_length = isset($_REQUEST['view_length']) ? $_REQUEST['view_length'] : NULL ;
$view_month = isset($_REQUEST['view_month']) ? $_REQUEST['view_month'] : NULL ;



// Parameters are
/*
In addition we need


view  -- quarters or total year
report_length --- ??????


*/

$search_list = array();
$where = "";
$quarter_search  = false;

//$debug_mode = true ; //  simulation below with fake data

if ($debug_mode == true)
{


	$debug_array = array
	(
	"fc"=>"GY 17 SPR 2",
	"ly_fc"=>"2365:JJ 17 4TH OF JULY",
	"season"=>"Spring",
	"brand"=>"Gymboree",
	"channel"=>"Retail",
	"country"=>"USA",
	"plan"=>"Live",
	"compare_plan"=>"LY",
	"report_length"=>'quarter',
	"view"=>"q2",
	"year"=>2017
	);


	$brand=$debug_array["brand"];
	$country=$debug_array["country"];
	$fc=$debug_array["fc"];
	$year=$debug_array["year"];
	$channel=$debug_array["channel"];
	$plan= $debug_array['plan'];
	$compare_plan= $debug_array['compare_plan'];
	$report_length = $debug_array['report_length'];
	$view_type = $debug_array['view'];
	$year = $debug_array['year'];



		foreach ($search_array as $item)
		{
			if (isset($debug_array[$item]))
			{
				$search_list[$item] =  trim($debug_array[$item]);
			}
		}






}

else

{


foreach ($search_array as $item)
{
	if (isset($_REQUEST[$item]))
	{
		$search_list[$item] =  trim($_REQUEST[$item]);
	}
}




}

if (sizeof($search_list) === 0)
{
 	$json=json_encode(array("status"=>"error", "message"=>"Nothing selected"));
	echo $json;
	die();
}



/*
Total Year
Q1
Q2
Q3
Q4
*/



// dynamically build SQL WHere ON what was pushed.

$c=0;
foreach ($search_list AS $index=>$value)
{
	if ($c>0)
	{
			$where .=  " AND f.".$index." =".$db->quote($value)." ";
	}
	else
	{
			$where .=  " f.".$index." =".$db->quote($value)." ";
	}

	$c++;
}
//echo $where;
$view_type = strtolower($view_type);

if ($view_type =='q1' || $view_type =='q2' ||  $view_type =='q3' || $view_type =='q4'   )
{
	// search by quarter using  fiscal_calendar
	$quarter_search = true;
	$where .= " AND f.year = ".$db->quote($year) ."  AND e.`quarter` = " . str_replace('q','',$view_type);
}

else
{
	$where .= " AND f.year = ".$db->quote($year) ."  ";

}


$view_month = strtolower($view_month);

//if (isset($view_month))
if ($view_month>0)
{
		$where .= " AND e.fiscal_MoNbr = ".$db->quote($view_month) ."  ";

}



//if (isset($compare_plan)){

//	$where .= " AND (plan =".$db->quote($plan)." OR plan =".$db->quote($compare_plan).")";

//}
//else
if (isset($compare_plan)){

	$where .= " AND (plan =".$db->quote($plan)." )";

}





//	$where .= " AND (plan =".$db->quote($plan)." )";


$where = " WHERE ". $where;

$group_by = "";

$sql = "SELECT f.* ";

if(isset($view_length) )
{

	$view_length = strtolower($view_length);

	if ($view_length=="week" || $view_length =="month" || $view_length =="quarter")
	{
	//$sql .=" , s.quarter, s.fiscal_MoNbr AS 'fiscal_month', SUM(f.unit_sales * f.aur) AS 'sum_aur',SUM(f.unit_sales * f.auc) AS 'sum_auc' ";


/*$sql ="
SELECT year,s.quarter, s.fiscal_MoNbr AS 'fiscalmo',brand,country,channel,season,fc, f.week, sum(f.unit_sales) AS 'sum_usls',
sum(f.unit_sales * f.air) AS 'sum_initrtl',sum(f.unit_sales * f.aur) AS 'sum_rtlsls',  sum(f.unit_sales * f.auc) AS 'sum_cogs',  sum(recs) as 'sum_recs',
sum(f.adj) as 'sum_adj', sum(f.onhand) as 'sum_oh' ";
SELECT f.year,s.quarter, s.fiscal_MoNbr AS 'fiscalmo', f.brand,f.country,f.channel,f.season, f.fc as fc, sum(f.unit_sales) AS 'sum_usls',
sum(f.unit_sales * f.air) AS 'sum_initrtl',sum(f.unit_sales * f.aur) AS 'sum_rtlsls', sum(f.unit_sales * f.auc) AS 'sum_cogs', sum(recs) as 'sum_recs',
sum(f.adj) as 'sum_adj', sum(f.onhand) as 'sum_oh', f.fc as realfc ";
*/

$sql="
Select f.year,e.quarter, e.fiscal_MoNbr as mthnbr,brand,channel,country, season,fc,
if(isnull(storeInv),0,storeInv)+if(isnull(dcInv),0,dcInv) as 'EOPInv'
from tblforecast f
Inner join fiscal_eop e on f.week=e.eopwk ";
	}


}


$sql_statement=  $sql . $where  . $group_by ;



if (isset($sqlshow) && $sqlshow =="true")
{


 echo $sql_statement;
die();

}


$stmt= $db->query($sql_statement);

$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

if ($results)
{

$json=json_encode($results);
}
else
{
$results2 = array();
$json=json_encode($results2);
}


//Fetch into associative array


//Print array in JSON format
header('Content-Type: application/json');

echo $json;

/*

SELECT   YEAR(STR_TO_DATE(c.`start_date`, '%m/%d/%Y')) as 'calendar_year', c.* FROM
fiscal_calendar c WHERE c.fiscal_year = '2018' AND c.`quarter` = 4   ORDER BY
 STR_TO_DATE(c.`start_date`, '%m/%d/%Y')

*/

/*-----
Notes:
SELECT  start_date , STR_TO_DATE(`start_date`, '%m/%d/%Y') AS mysql_date FROM fiscal_calendar
-----*/


?>
