<?php
include '../partials/dbconnect.php';
$actual_link = "https://$_SERVER[HTTP_HOST]";



if (isset($_POST["create_single_page"])) {

    $country = json_decode($_POST['country'])[0];
    $country_name = json_decode($_POST['country'])[1];
    $state = $_POST['state'];
    $city = $_POST['city'];
    $selected_title = $_POST['title'];
    $fist_name = $_POST['first_name'];
    $last_name = $_POST['last_name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $address = $_POST['address'];
    $description = $_POST['description'];
    $linkedin = $_POST['linkedin_url'];
    $services = $_POST["services"];

}

?>