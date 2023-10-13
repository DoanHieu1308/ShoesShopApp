<?php
class User {
    public $id;
    public $username;
    public $password;

    public function __construct($id, $username, $password) {
        $this->id = $id;
        $this->username = $username;
        $this->password = $password;
    }
}


   $connect = mysqli_connect("localhost", "root", "", "localconnect");
if (!$connect) {
    echo "Database connection failed";
} else {
    mysqli_query($connect, "SET NAMES 'utf8'");

    $query = "SELECT * FROM users";
    $data = mysqli_query($connect, $query);
    
    $mangUser = array();

    if ($data) {
        $count = mysqli_num_rows($data);

        if ($count >= 1) {
            // Duyệt qua kết quả và in ra từng dòng
            while ($row = mysqli_fetch_assoc($data)) {
                // In ra dữ liệu từ hàng hiện tại
                //echo "User ID: " . $row['id'] . "<br>";
                //echo "Username: " . $row['username'] . "<br>";
                //echo "Password: " . $row['password'] . "<br>";
                // In ra các trường dữ liệu khác tùy theo cơ sở dữ liệu của bạn
                //echo "<br>";
                array_push($mangUser, new User($row['id'], $row['username'], $row['password']));     
            }
            echo json_encode($mangUser);
            //echo json_encode("success");

        } else {
            echo json_encode("error");
        }
    } else {
        echo "Query error: " . mysqli_error($connect);
    }

    mysqli_close($connect);
}



?>
