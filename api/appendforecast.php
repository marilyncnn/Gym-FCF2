<?php
session_start(); //To start the session
include '../applogic/app-config.php';
include '../applogic/db-connect.php';

/* ? Why is this a post and GET?
//Make sure that it is a POST request.
if(strcasecmp($_SERVER['REQUEST_METHOD'], 'POST') != 0){

    throw new Exception('Request method must be POST!');
}

*/

$log_sql = true; // save debug json posts.
$debug_mode = false;

//$debug_mode = true ; //  simulates

if ($debug_mode == true)

{

// Place holder data


// Note: no season...
$brand= "Crazy8";
$country="USA";
$fc="GY C8 18 SWIM 2";
$fiscalYr="2018";
$season='Spring';
$channel="Retail";
$fcstVer= "Last";
$plan= "Last";
$content = trim(file_get_contents("json2.json"));

}

else
{

// Live production
$author =$_REQUEST["author"];
$brand=$_REQUEST["brand"];
$country=$_REQUEST["country"];
$season=$_REQUEST["season"];
$fc=$_REQUEST["fc"];
$fiscalYr=$_REQUEST["year"];
$channel=$_REQUEST["channel"];
$fcstVer=$_REQUEST["forecastVer"];
$plan=$_REQUEST["plan"];


/*$fc_id = 0;


$sql1 = "SELECT id from fc_setup";
$where1=" WHERE brand='". $brand ."' AND channel='" . $channel . "' AND year='" . $fiscalYr . "' AND fc='". $fc."'  AND season ='".$season."'
AND country='".$country."'";
$sql1= $sql1.$where1;

$idd= $db->prepare($sql1); // get ID;
$idd->execute();
$result = $idd->fetch(PDO::FETCH_LAZY);
if ($result)
    {
        $fc_id = $result["id"];
    }

*/


#echo $plan;

//Make sure that the content type of the POST request has been set to application/json
$contentType = isset($_SERVER["CONTENT_TYPE"]) ? trim($_SERVER["CONTENT_TYPE"]) : '';
// echo "this is content type " .$contentType;

if(strcasecmp($contentType, 'application/json; Charset=UTF-8') != 0){

    throw new Exception('Content type must be: application/json');
    }

//Receive the RAW post data.
$content = trim(file_get_contents("php://input"));



}

if ($log_sql)
{




if($content)
    {


    $in= "INSERT INTO json_log ( datecreated,json,user) VALUES ( NOW(), :json, :user)";
    $insert = array("json"=>$content,"user"=>$author);
    $instmt = $db->prepare($in);
    $instmt->execute($insert);

    }


}


$data = json_decode($content, true);


// var_dump($content);
// Attempt to decode the incoming RAW post data from JSON.
#echo "ahere22";
#echo !is_array($data);
//If json_decode failed, the JSON is invalid.
if(!is_array($data)){
    echo 'Received content contained invalid JSON!';
    throw new Exception('Received content contained invalid JSON!');

}

#echo "here1";



$x=0;

// THIS could be problematic...
// Move delete to loop.


foreach($data as $Forecast) {



    if(!isset($Forecast['salesUnits']))
    { echo nl2br("\n no record ". "fiscal Wk " . $Forecast['week'] ." ". ++$x );
    }
    else {

    //get the forecast details
        $yr = $Forecast['year'];
        $plan=$Forecast['plan'];
        $channel = $Forecast['channel'];
        $season = $Forecast['season'];
        $fc = $Forecast['fc'];
        $wk = $Forecast['week'];

        $usls = $Forecast['salesUnits'];
        $air = $Forecast['air'];
        $aur = $Forecast['aur'];
        $auc = $Forecast['auc'];
        $bop = $Forecast['bopUnits'];

      /*  $recU = $Forecast['recUnits'];
        $recCost = $Forecast['recCost'];
        $recRtl = $Forecast['recRtl'];
        $recAir = $Forecast['recAIR'];
        $recAuc = $Forecast['recAUC'];
        */
        $adj = $Forecast['sohAdjust'];
        $transIn = $Forecast['transIn'];
        $transOut = $Forecast['transOut'];
        $dcoh=$Forecast['dcInv'];
        $phUnits=$Forecast['phUnits'];
        $phCost=$Forecast['phCost'];
        $phRtl=$Forecast['phRtl'];


        #$storeoh = $Forecast['storeInv'];



        //insert into mysql table


        if (!$invIT)  $invIT = 0;

/*


    "Tot_OH": 666,
    "Recs_PH": 12,
    "Recs_OO": 0,
    "Inv_Adj": 1
  },

      "Tot_OH": 2,
    "Recs_PH": 232,
    "Recs_OO": 0,
    "Inv_Adj": 777





   */





if ($plan == "LIVE") $plan ="Live";
if  ($Usls =="0") $Usls = 0.0;
if  ($recs =="") $recs = 0;



if ($debug_mode == true)

{

        $recPH=0;

        $oo=0;
}



$Wk = intval($wk);


$sql = "DELETE from tblforecast";
$where=" WHERE brand='". $brand ."' AND channel='" . $channel . "' AND year='" . $yr . "' AND fc='". $fc."' AND plan='".$plan. "'
AND season ='".$season."'
AND country='".$country."'
AND week = $wk ";
$sql=$sql.$where;

$stmt= $db->query($sql);

// Delete Record.
if ($log_sql)
{
    $insert = array("json"=>$sql,"user"=>$author);
    $instmt = $db->prepare($in);
    $instmt->execute($insert);
}
#echo $sql;

/*$sql = "INSERT INTO forecast(year, brand, country, channel, season, fc, week, unit_sales, air, aur, auc, storeoh, recs, adj, plan, dcoh, recplaceholder,invIT,onorder)
            VALUES($Yr, '$brand', '$country', '$Channel', '$Season', '$FC', $Wk, $Usls, $air,$aur,$auc,$storeoh,$recs,$adj,'$plan',$dcoh,$recPH,$invIT,$oo, dbnotes,fc_id)";
*/


$sql = "INSERT INTO tblforecast(year, plan, brand, country, channel, season, fc, week, salesUnits, air, aur, auc, phUnits,phCost, phRtl,bopUnits,dcInv,sohAdjust, transIn, transOut,datelast, dbnotes,reforecast)
            VALUES($yr, '$plan', '$brand', '$country', '$channel', '$season', '$fc', $wk, $usls, $air,$aur,$auc,$phUnits,$phCost,$phRtl,$bop,$dcoh,$adj, $transIn ,$transOut , NOW(), '$author',false)";

#echo $sql;

if ($log_sql)
{
    $in= "INSERT INTO json_log ( datecreated,json,user) VALUES ( NOW(), :json, :user)";
    $insert = array("json"=>$sql,"user"=>$author);
    $instmt = $db->prepare($in);
    $instmt->execute($insert);
}



$stmt= $db->query($sql);

if ($stmt)
{
           // echo nl2br("\n query success ". $Wk . " " .++$x) ;
            $success=++$x;
}

else
{
  //  echo "didn't";
  echo "Error inserting record into tblforecast:";
    die(" Problem starting with Fiscal Wk:". $yr.$Wk);
}



// missing storeoh, dcoh

/*

        $query=mysqli_query($con,$sql);

        if($query)
        {
            #echo nl2br("\n query success ". $Wk . " " .++$x) ;
            $success=++$x;
        }
        Else
        {
            die('query failed : ' . mysqli_error($con). " Fiscal Wk:". $Wk);
        }

*/



    }
}
echo $success . " records processed";

session_unset();
?>
