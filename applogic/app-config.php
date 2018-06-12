<?php
error_reporting(0);
/*
|--------------------------------------------------------------------------
| Database Connections
|--------------------------------------------------------------------------
|
| Here are the database configuration setting of the application.
| HOST is the hostname of the mysql. It can be IP address, localhost or 127.0.0.1
|
|
| USERNAME : username of the mysql (It can be root or anything else)
| PASSWORD : password of the mysql.
| DATABASE : First create the database using phpmyadmin or mysql and enter the name of database
|
   */

$GLOBALS['HOST']     = 'localhost';
$GLOBALS['USERNAME'] = 'root';
$GLOBALS['PASSWORD'] = '';
$GLOBALS['DATABASE'] = 'feature-code2';



$GLOBALS['HOST']     = '127.0.0.1:3306';
$GLOBALS['USERNAME'] = 'root';
$GLOBALS['PASSWORD'] = '';
$GLOBALS['DATABASE'] = 'feature-code2';



// Notes.. Default Names are
// Jack and Jane Crazy8



/*
try {
    //create the new database object via pdo
    $db = new PDO('mysql:dbname='.$GLOBALS['DATABASE'].';host='.$GLOBALS['HOST'] ,$GLOBALS['USERNAME'],$GLOBALS['PASSWORD']);
}

catch( PDOException $e ) {
// Note The Typecast To An Integer!

	print "Error!: " . $e->getMessage() . "<br/>";
	die();

}
*/

/*
|--------------------------------------------------------------------------
| Global App Constants
|--------------------------------------------------------------------------
|
| Encryption key.This key is used for the encryption of the keys that are generated
| Forget Key and Email verification Key
|
*/


$GLOBALS['GLOBAL_MARKDOWNWEEKS']  = 13;
$GLOBALS['GLOBAL_WEEKS'] = 52;


$GLOBALS['REFORCASTHISTORY_WEEKS'] = 3; // GO BACK 3 weeks from current week
$GLOBALS['REFORCASTMAX_WEEKS'] = 3; // MAX WE CAN GO BACK
$GLOBALS['REFORCASTMAX_DAMP'] = 3; // Dampening windows
$GLOBALS['REFORCAST_ONHANDTHRESHOLD'] = 1000; // 1000 on hand units


/*

Only if 1,000 on hand and has been selling 3 weeks or more

over that time frame window
, what was original plan version
If there is an original plam, we will use it
Otherwise use LY,
Else Don't re-forecast.

SUM of comparison table (of past 3-5 weeks).
Compare to it the actual versions of the plan.

If there is a 5% difference, take entire unit_sales  down by 5% in all the weeks forward.
HOWEVER, #of dampening

As it is forecasting farther into the future / # of dampening week
If I am 3 weeks into my forecast ,(10 week dampening) It will be 10/3 or 30%

*/





/*
|--------------------------------------------------------------------------
| Encryption Key
|--------------------------------------------------------------------------
|
| Encryption key.This key is used for the encryption of the keys that are generated
| Forget Key and Email verification Key
|
*/

$encryptionKey = 'o7l8Tvxdq1zE8oa45TiVNMRH05Xe6tqgPZW3+Mcghgk=';

/*
|--------------------------------------------------------------------------
| Google Re captcha Keys
|--------------------------------------------------------------------------
|
| Visit this to generate keys https://www.google.com/recaptcha/intro/index.html
|
*/


$siteKey   = '6LeFmU8UAAAAANKzwsZII87dU05g_X2ZlZElgJbs';
$secretKey = '6LeFmU8UAAAAAJit1HZWqNGS5Cndq8bNBNBtLj47';

/*
|--------------------------------------------------------------------------
| System Logging
|--------------------------------------------------------------------------
|
|
|
*/

function systemLog ($db, $name, $object, $record_type, $fail)

{

	$insert = array ("name"=>$name, "object"=>$object, "record_type"=>$record_type, "fail"=>$fail);
	$in = "INSERT INTO system_log (datecreate, name, object,record_type,fail ) VALUES (NOW(), :name ,:object, :record_type, :fail);";
			$instmt = $db->prepare($in);
			$instmt->execute($insert);
		return true;

}


function filterAmp($a)
{
	// for Janie & Jack / Janie and Jack
	// Standardize on final being "&"

	$b = str_replace("and", "&", $a);
	return $b;

}







?>
