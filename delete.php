<?php
include 'Database.php';
include 'Student.php';

if(isset($_GET['id'])){
    $id=$_GET['id'];
    $newDB=new Database('localhost','root','','temp');
    $connection=$newDB->getConnection();
    $students=$newDB->getStudents($connection);
    $query="DELETE FROM students WHERE student_id='$id'";
    $result=mysqli_query($connection,$query);
    header('Location: index.php');
}