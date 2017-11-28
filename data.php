<?php
include 'config.php';

$sel = mysqli_query($con,"select * from People");
$data = array();

while ($row = mysqli_fetch_array($sel)) {
 $data[] = array("id"=>$row['ID'],"firstname"=>$row['FirstName'],"lastname"=>$row['LastName'],"age"=>$row['Age'],"petname"=>$row['PetName']);
}
echo json_encode($data);
?>
