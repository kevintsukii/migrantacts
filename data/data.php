<?php
// insert new data into database
// retrieve all records and send them back as JSON

// CAPTURE YOUR VARIABLES 
$firstname = $_POST['fname'];
$lastname = $_POST['lname'];
$favcolor = $_POST['fcolor'];


// connection variables
$username = "root";//your username goes here
$password = "root";//your password goes here
$host = "localhost";//your host name goes here
$db = "YOUR-DB";// your database name goes here

// connection string
$dbh = mysqli_connect ($host, $username, $password, $db);
// connection verification
if(!$dbh) { die("connection failed " . mysqli_connect_error()); }


// ADD YOUR FIELD NAMES HERE -- variables for creating JSON to send back to scripts.js
$fields = array("id", "firstname", "lastname", "favcolor");
$outstring = '';

// ADD YOUR SQL HERE
$sql1 = "insert into YOURTABLE (firstname, lastname, favcolor) values ('$firstname', '$lastname', '$favcolor')";
$result = mysqli_query($dbh,$sql1);

// ADD YOUR SQL HERE PART 2
$sql2 = "select * from YOURTABLE";
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