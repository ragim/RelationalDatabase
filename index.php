<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
    </head>
    <body>
        <?php
        include "Database.php";
        include "Student.php";
        include "Assignment.php";

        $host = "localhost";
        $dbUsername = "root";
        $dbName = "temp";
        $dbPassword = "";
        $db = new Database($host,$dbUsername,$dbPassword,$dbName);
        $connection = $db->getConnection();
        $db->displayStudents($connection);

        echo "<hr>";

        $db->displayAssignments($connection);
        ?>
    </body>
</html>

