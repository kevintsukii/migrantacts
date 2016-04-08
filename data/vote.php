<?php
// insert new data into database
// retrieve all records and send them back as JSON

// CAPTURE YOUR VARIABLES 
$allVals = $_POST['allVals']; // from the script, not the DB

$leng=sizeof($allVals);

// connection variables
$username = "root";//your username goes here
$password = "root";//your password goes here
$host = "localhost";//your host name goes here
$db = "j555s2";// YOUR DATABASE NAME GOES HERE

// connection string
$dbh = mysqli_connect ($host, $username, $password, $db);
// connection verification
if(!$dbh) { die("connection failed " . mysqli_connect_error()); }
	

//ADD YOUR FIELD NAMES HERE -- variables for creating JSON to send back to scripts.js
$fields = array("option_id", "vote_total");
$outstring = '';

// ADD YOUR SQL HERE
for ($i=0;$i<$leng;$i++){
$sql1 = "update legalquiz_data set vote_total=vote_total+1 where option_id=$allVals";
$result = mysqli_query($dbh,$sql1);
//echo $result;
}

// ADD YOUR SQL HERE PART 2
$sql2 = "select * from legalquiz_data";
$results = mysqli_query($dbh,$sql2);
while($data[]=mysqli_fetch_array($results));


//print_r($data);


	$dlen = sizeof($data);
	$len = sizeof($fields);

	## GENERATE JSON
	$outstring .= '['; // open json object array
	
	for ($d=0; $d<$dlen-1; $d++) {
		$outstring .= '{';
		
		for ($i=0; $i<$len;$i++) {
			$outstring .= '"'.$fields[$i].'":"'. $data[$d][$fields[$i]].'"';
			if ($i<$len-1) {
				$outstring .= ',';
			}
		}
		if ($d < $dlen-2) {
			$outstring .= '},';
		} else {
			$outstring .= '}';
		}
	}
	$outstring .= ']'; //close json object array


echo $outstring;

mysqli_close($dbh);




?>