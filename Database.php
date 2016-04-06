<?php

/**
 * Created by PhpStorm.
 * User: ragim
 * Date: 23/03/2016
 * Time: 19:45
 */

class Database
{
    private $host;
    private $username;
    private $password;
    private $dbname;
    private $connection;


    public function __construct($host, $username, $password, $dbname)
    {
        $this->host = $host;
        $this->username = $username;
        $this->password = $password;
        $this->dbname = $dbname;
        $this->connection = new mysqli($host,$username,$password,$dbname);
    }

    public function getConnection()
    {
        return $this->connection;
    }

    public function getStudents($connection)
    {
        $query = "SELECT * FROM students";
        $data = $connection->query($query);
        $students_array = array();

        while($rawStudent =  $data->fetch_object())
        {
            $ID =  $rawStudent->student_id;
            $name = $rawStudent->student_name;
            $phone = $rawStudent->student_phone;
            $email= $rawStudent->student_email;
            $bday = $rawStudent->student_bday;
            $group = $rawStudent->student_group;
            $class= $rawStudent->student_class;
            $student = new Student($ID, $name,$phone,$email,$bday,$group,$class);
            //array_push($students_array,$student);
            $students_array[] = $student;
        }
        return $students_array;
    }

    public function getAssignments($connection)
    {
        $query = "SELECT * FROM assignments";
        $data = $connection->query($query);
        $assignments_array = array();

        while($rawStudent =  $data->fetch_object())
        {
            $ID =  $rawStudent->assignment_id;
            $name = $rawStudent->assignment_name;
            $date = $rawStudent->assignment_date;
            $assignment = new Assignment($name,$date,$ID);
            array_push($assignments_array,$assignment);
        }
        return $assignments_array;
    }

    public function displayStudents($connection){
        $students_array = $this->getStudents($connection);
        echo "<table class='striped'>";
            echo "<tr>";
                echo "<th>Name</th>";
                echo "<th>Phone</th>";
                echo "<th>Email</th>";
                echo "<th>Birthday</th>";
                echo "<th>Group</th>";
                echo "<th>Class</th>";
                echo "<th>Delete</th>";
             echo "</tr>";

        foreach($students_array as $student)
        {
            echo "<tr>";
                echo "<td>$student->name</td>";
                echo "<td>$student->phone</td>";
                echo "<td>$student->email</td>";
                echo "<td>$student->bday</td>";
                echo "<td>$student->group</td>";
                echo "<td>$student->class</td>";
                echo "<td><a href='delete.php?id=$student->ID'>DELETE</a></td>";
            echo "</tr>";
        }
        echo "</table>";

    }

    public function displayAssignments($connection){
        $assignments_array = $this->getAssignments($connection);
        echo "<table class='striped'>";
        echo "<tr>";
        echo "<th>Name</th>";
        echo "<th>Date</th>";
        echo "<th>Delete</th>";
        echo "</tr>";

        foreach($assignments_array as $assign)
        {
            echo "<tr>";
            echo "<td>$assign->name</td>";
            echo "<td>$assign->date</td>";
            echo "<td><a href='delete.php?id=$assign->id'>DELETE</a></td>";
            echo "</tr>";
        }
        echo "</table>";

    }
}