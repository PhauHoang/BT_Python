<?php
header('Content-Type: application/json');

// kết nối server
$server = "127.0.0.1,1433";
$database = "DEMO_IOT";
$username = "sa";
$password = "1234";

try {
    $conn = new PDO("sqlsrv:Server=$server;Database=$database", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected successfully <br>";
} catch(PDOException $e) {
    echo "Connection DB failed: " . $e->getMessage();
}


// Method GET
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    // check parameter first
    if(isset($_GET["action"])) {
        // code GET here!!!!
        $action = $_GET["action"];
        if($action=="get_all"){
            // Thực thi truy vấn SQL
            $stmt = $conn->query("select * from lich_su");
            // Xử lý kết quả
            $array_kq = [];
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $array_kq[] = $row; // Thêm dòng hiện tại vào mảng
            }
            $json_result = json_encode($array_kq);
            echo $json_result;

        }elseif($action=="get_it"){
              // Thực thi truy vấn SQL
              $stmt = $conn->query("select top 15 * from lich_su join Sensor ON  lich_su.sid = Sensor.SID ");
              // Xử lý kết quả
              $array_kq = [];
              while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                  $array_kq[] = $row; // Thêm dòng hiện tại vào mảng
              }
              $json_result = json_encode($array_kq);
              echo $json_result;
        }
        else{
            echo json_encode(array("action" => $action));
        }

    } else {
        echo json_encode(array("error" => "Missing action parameter"));
    }
}