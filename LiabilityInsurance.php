<!DOCTYPE html>
<html>
    <head> </head>
    <?php
//	Liability Insurance
//	
//	http://localhost/
//
//      http://localhost/PHP2016/LiabilityInsurance.php?smsID=1&MSISDN=359899866747&msp=87&smsBody=1000:1983
//
//	set error reporting
    error_reporting(E_ALL);

//	open connection
    $link = mysql_connect('localhost', 'root', '');

    if (!$link) {

//	print error and exit()
        echo "-ERR MySQL Error: " . mysql_error();
        exit();
    }


//	select db
    mysql_select_db("liabilityinsurance");


//	get data from _GET
    $smsID = $_GET["smsID"];
    $MSISDN = $_GET["MSISDN"];
    $mobileSP = $_GET["msp"];
    $smsBody = $_GET["smsBody"];


//	prepare data (delete space and etc.)
    $smsBody = str_replace(" ", "", $smsBody);


//	add slashes
    $smsID = addslashes($smsID);
    $MSISDN = addslashes($MSISDN);
    $mobileSP = addslashes($mobileSP);
    $smsBody = addslashes($smsBody);
    $args = explode(':', $smsBody);
    $cubage1 = $args [0];
    $year1 = $args[1];
    echo "<br> exploded:  cubage=" . $cubage1 . ", year=" . $year1;


//	search SQL in codes
    $selectSQL = "
	SELECT 
		* 
        FROM 
		liabilityinsurance  
	WHERE 
		cubage = '$cubage1' AND 
                year = '$year1'    
		
";


//	exec SQL
    $rSelect = mysql_query($selectSQL);

//  check result
    if ($rSelect == false) {

//	print error and exit()
        echo "-ERR MySQL Error: " . mysql_error() . "\nSQL: $selectSQL";
        exit();
    } else {

//	get row count
        $count = mysql_num_rows($rSelect);


//	check row count
        if ($count == 0) {

//	print text for invalid code
            echo '<br>';
            echo "+OK No such combination of year and cubage.";
            exit();
        }


//	fetch data
        $row = mysql_fetch_array($rSelect);


//	get data
        $cubage = $row['cubage'];
        $year = $row['year'];
        $price = $row['price'];
        echo '<br>cubage= ' . $cubage . '; ' . ' year= ' . $year . '; ' . ' price= ' . $price . ' lv';
        echo '<br>';
        echo "+OK The price of your Liability Insurance is $price  lv";
        exit();
    }


//	close connection
    mysql_close($link);
    ?>

</html>