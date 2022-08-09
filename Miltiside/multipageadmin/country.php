<?php
session_start();
if (!isset($_SESSION["isLoggedin"])) {
    header('Location: ./index.php');
}
include './partials/dbconnect.php';
?>
<?php include 'partials/header.php' ?>
<?php include 'partials/loggedin-header.php' ?>


<?php
$actual_link = "https://organizein.com";


if(isset($_REQUEST['SubmitBtn'])){
    $country = json_decode($_REQUEST['country'])[0];
    $country_name = json_decode($_REQUEST['country'])[1];
    $state = $_REQUEST['state'];
    $city = $_REQUEST['city'];
    $pincode = $_REQUEST['pincode'];
    $phone = $_REQUEST['phone'];

    $url = "$actual_link/$country/";
    $urlcity = "$actual_link/$country/$city/";


    $existsql = "SELECT count(*) as check_row FROM country_details WHERE country = '$country' and state1 = '$state'";
    $result = mysqli_query($conn, $existsql);
    $numRows = mysqli_fetch_assoc($result)["check_row"];
    
    if($numRows > 0) {
        $msg = '<div class="alert alert-danger col-sm-6 ml-5 mt-2">The country and city name already exists! </div>';
    } 
    else {
        $sql = "INSERT INTO country_details (country, country_name, state1, city, pincode, phone) VALUES ('$country', '$country_name', '$state', '$city', '$pincode', '$phone')";
        $sql3 = "INSERT INTO country_pages (country, country_name, state1, city, country_url, city_url) VALUES ('$country', '$country_name', '$state', '$city', '$url', '$urlcity')";

        if($conn->query($sql3) == True){
        
            if($conn->query($sql) == True){
                $msg = '<div class="alert alert-success col-sm-6 ml-5 mt-2">Details Added Succesfully !</div>';
                // echo "<script> location.href='/multipageadmin/manage-country.php'; </script>";
            }
            else{
                $msg = '<div class="alert alert-danger col-sm-6 ml-5 mt-2">Unable to Add Details </div>';
            }
        }
    }
    

}



// if ($result1) {
//         header("Location: /multipageadmin/manage-pages.php");
//         exit();
//     }


?>

<style>
.country-section .selection,
.services .selection {
    display: block !important;
}

.country-section .select2-container--default .select2-selection--single,
.services .select2-container--default .select2-selection--single {
    border-radius: unset !important;
    border: 2px solid #dadada !important;
}

.country-section .select2-container .select2-selection--single,
.services .select2-container .select2-selection--single {
    height: 33px;
}
</style>
<section>
    <div class="container">
        <div class="row">
            <?php include 'partials/sidebar.php' ?>
            <div class="col-12 col-md-9 col-lg-9">
                <div class="right-site">
                    <h4>Add a New Page > Add Country Page</h4>
                </div>
                <form action="" method="POST">
                    <div class="main-form- active">
                        <div class="form-header">
                            <h4>Country or City location</h4>
                        </div>
                        <div>
                            <div class="single-filed">
                                <h5>Select Country</h5>
                                <div class="right country-section">
                                    <select name="country" class="country-name form-control">
                                        <?php
                                        $country = file_get_contents("https://api.worldbank.org/v2/country/all?format=json&per_page=299");
                                        $country = json_decode($country);
                                        // print_r($country); exit();
                                        foreach ($country[1] as $country_name) {
                                        ?>
                                        <option
                                            value='<?= '["' . $country_name->iso2Code . '", "' . $country_name->name . '"]' ?>'>
                                            <?= $country_name->name ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="single-filed mt-2">
                                <h5>State Name</h5>
                                <div class="right">
                                    <input type="text" id="state" name="state" />
                                </div>
                            </div>
                            <div class="single-filed mt-2">
                                <h5>City Name</h5>
                                <div class="right">
                                    <input type="text" id="city" name="city" />
                                </div>
                            </div>

                            <div class="single-filed mt-2">
                                <h5>Pincode</h5>
                                <div class="right">
                                    <input type="text" id="pincode" name="pincode" />
                                </div>
                            </div>

                            <div class="single-filed mt-2 mb-4">
                                <h5>Phone Number</h5>
                                <div class="right">
                                    <input type="text" id="phone" name="phone" />
                                </div>
                            </div>

                        </div>
                    </div>
                    <br />
                    <br />
                    <div class="text-center mb-5">
                        <button class="create-website" type="submit" id="SubmitBtn" name="SubmitBtn">Submit</button>
                    </div>

                    <?php
                        if(isset($msg)){
                            echo $msg;
                        }
                    ?>
                </form>
            </div>

            <div class="col-12 col-md-12 ">
                <div class="log-out mt-5 mb-3">
                    <a href="<?= "./auth/logout.php" ?>">
                        <i class="fa-solid fa-right-from-bracket"></i> Logout</a>
                </div>
            </div>
        </div>
    </div>
</section>


<?php include 'partials/footer.php' ?>