<?php
include 'Database.php';
include 'Student.php';
$newDB=new Database('localhost','root','','temp');
$connection=$newDB->getConnection();
$students=$newDB->getStudents($connection);

if(isset($_POST['submit'])){
    $name=$_POST['title'];
    $date=$_POST['date'];
    $studentId=$_POST['student_id'];
    $query="INSERT INTO assignments(assignment_name, assignment_date, student_id) VALUES ('$name','$date','$studentId')";
    $result=mysqli_query($connection,$query);
}
?>
<html>
<head>
    <title>Add Assignment Form</title>
</head>
<body>
<form action="" method="post">
    <input type="text" name="title" placeholder="title of assignment">
    <input type="date" name="date" placeholder="date of assignment">
    <select name="student_id">
        <?php
        foreach($students as $student){
            echo "<option value='$student->ID'>$student->name</option>";
        }
        ?>
    </select>
    <input type="submit" name="submit">
</form>
</body>
</html>
