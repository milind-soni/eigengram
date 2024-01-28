<?php

/*
$con = mysqli_connect("localhost","root","","pmc_raw") 
or die("Connection was not established");
*/

$con = mysqli_connect("localhost","user_1","password","pmc_raw") 
or die("Connection was not established");

/*
// For local ip
$con = mysqli_connect("0.0.0.0","root","","pmc_raw") 
or die("Connection was not established");
*/




$pmc_id = '8304618';

$get_data = "select * from pmc_list where pmc_id='$pmc_id'";
$run_data = mysqli_query($con,$get_data);
while($row_data=mysqli_fetch_array($run_data)){
	print_r($row_data);
}