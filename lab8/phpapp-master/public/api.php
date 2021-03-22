<?php

$dbconn = pg_connect("host=localhost port=5432 dbname=phpapp");
$result = pg_query($dbconn, "SELECT token FROM clients");
$data = pg_fetch_all($result);

$all = getallheaders();
header("Content-Type: application/json");

if (isset($all["X-Men"]) && isset($all["Authentication"])) {

    $auth = explode(" ", $all["Authentication"]);

    $found = false;

    foreach($data as $client) {
        if ($client["token"] == $auth[1]) {
            $found = true;
        }
    }

    if (!$found) {
        $reply = ["error" => "Invalid token.", "type" => $auth[0], "token" => $auth[1]];
        http_response_code(401);
    } else {

        $mutant = $all["X-Men"];

        //https://en.wikipedia.org/wiki/List_of_X-Men_members
        switch ($mutant) {
            case "Wolverine":
                $name = "Logan";
                break;
            case "Professor X":
                $name = "Charles Francis Xavier";
                break;
            case "Cyclops":
                $name = "Scott Summers";
                break;
            case "Iceman":
                $name = "Robert Louis Drake";
                break;
            case "Beast":
                $name = "Henry Philip McCoy";
                break;
            case "Phoenix":
                $name = "Jean Elaine Grey";
                break;
            default:
                $name = "Unknown";
        }
        $reply = ["mutant" => $mutant, "name" => $name];
    }
} else {
    $reply = ["error" => "Invalid Request.", "headers" => $all];
    http_response_code(400);
}
echo json_encode($reply);
