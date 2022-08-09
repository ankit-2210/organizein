<?php
session_start();
if (!isset($_SESSION["isLoggedin"])) {
  header('Location: ./index.php');

}
include './partials/dbconnect.php';

?>
<?php include 'partials/header.php' ?>
<!------------------ header section  --------------------------->
<?php include 'partials/loggedin-header.php' ?>
<!------------------ header section end ------------------------>


<?php
     if(isset($_REQUEST['delete'])){
        $sql = "DELETE FROM country_pages WHERE id = {$_REQUEST['id']}";
        $sql1 = "DELETE FROM country_details WHERE id = {$_REQUEST['id']}";
        
        if($conn->query($sql1) == True){
        
            if($conn->query($sql) == TRUE){
                // echo "YES";
            }
            else{
                echo "Unable to Delete Data";
            }
        }
    }
?>


<section>
    <div class="container">
        <div class="row">
            <?php include 'partials/sidebar.php' ?>
            <div class="col-12 col-md-9 col-lg-9">
                <div class="right-site">
                    <h4>Manage Country Page</h4>
                </div>

                <?php
                    $sno=1;
                        
                    $sql2 = "SELECT DISTINCT country, country_name FROM country_pages";
                    $result2 = mysqli_query($conn, $sql2);

                    while($row1 = mysqli_fetch_assoc($result2)) {
                        $country = $row1['country'];
                        $country_name = $row1['country_name'];  
                        
                ?>

                <div class="table-div mt-4">

                    <table class="table">
                        <thead class="">
                            <tr class="">
                                <th scope="col">No</th>
                                <th scope="col">Country</th>
                                <th scope="col ">Name</th>
                                <th scope="col ">State</th>
                                <th scope=" col">City</th>
                                <th scope="col">Country Link</th>
                                <th scope="col">City Line</th>
                                <th scope="col">Manage</th>
                            </tr>
                        </thead>

                        <tbody>

                            <tr>
                                <td>
                                    <?php
                                        echo "$sno <br><br>"; 
                                    ?>
                                </td>

                                <td>
                                    <?php
                                        echo "$country <br><br>";    
                                    ?>
                                </td>

                                <td>
                                    <?php
                                        echo "$country_name <br><br>";
                                    ?>
                                </td>

                                <td>
                                    <?php
                                    $sql1 = "SELECT state1 FROM country_pages WHERE country='$country'";
                                    $result1 = mysqli_query($conn, $sql1);

                                    while($row2 = mysqli_fetch_assoc($result1)) {
                                        $state1 = $row2['state1'];
                                        echo "$state1 <br><br>";
                                    }
                                ?>
                                </td>

                                <td>
                                    <?php
                                    $sql1 = "SELECT city FROM country_pages WHERE country='$country'";
                                    $result1 = mysqli_query($conn, $sql1);
                                    while($row2 = mysqli_fetch_assoc($result1)) {
                                        $city = $row2['city'];
                                        echo "$city <br><br>";
                                    }
                                ?>
                                </td>

                                <td>
                                    <?php
                                 $sql1 = "SELECT country_url, country  FROM country_pages WHERE country='$country'";
                                 $result1 = mysqli_query($conn, $sql1);
                                while($row2 = mysqli_fetch_assoc($result1)) {
                
                                        $country_url = $row2['country_url'];
                                        $country1 =  strtolower(str_replace(" ", "-", $row2['country']));
                                        
                                        ?>

                                    <a href="https://organizein.com/<?php echo $country1 ?>" target="
                                            _blank"><?php echo $country_url ?></a> <br><br>
                                    <?php   
                                }
                                ?>
                                </td>
                                <td>
                                    <?php
                                    $sql1 = "SELECT country, city, city_url FROM country_pages WHERE country='$country'";
                                    $result1 = mysqli_query($conn, $sql1);
                                    while($row2 = mysqli_fetch_assoc($result1)) {
                
                                        $city_url = $row2['city_url'];
                                        $city = $row2['city'];
                                        $country = $row2['country'];
                                        ?>

                                    <a href="https://organizein.com/<?php echo $country ?>/<?php echo $city ?>" target="
                                        _blank"><?php echo $city_url ?></a> <br><br>
                                    <?php   
                                    }
                                    ?>
                                </td>

                                <td>
                                    <?php
                                        $sql1 = "SELECT id FROM country_pages WHERE country='$country'";
                                        $result1 = mysqli_query($conn, $sql1);
                                        while($row2 = mysqli_fetch_assoc($result1)) {
                                            $id = $row2['id'];
                                    ?>

                                    <form action="" method="POST" class="d-inline">
                                        <input type="hidden" name="id" value="<?php echo $id ?>">
                                        <button type="submit" class="" style="border:none" name="delete" value="Delete">
                                            Delete
                                        </button>
                                        <br>
                                        <br>
                                    </form>

                                    <?php
                                    }
                                    ?>

                                </td>

                            </tr>
                        </tbody>
                    </table>

                </div>

                <?php
                    $sno++;
                    }
                        
                ?>

            </div>
            <div class=" col-12 col-md-12">
                <div class="log-out mt-5 mb-3">
                    <a href="<?= "./auth/logout.php" ?>">
                        <i class="fa-solid fa-right-from-bracket"></i> Logout</a>
                </div>
            </div>
        </div>

    </div>
</section>


<!---------------- footer section start  -------------->
<?php include 'partials/footer.php' ?>

<script type="text/javascript">
let darkMode = document.querySelector('.checkbox-tbh');
darkMode.addEventListener('click', function() {
    darkMode.classList.toggle('active');
})
let darkModex = document.querySelector('.checkbox-tbhx');
darkModex.addEventListener('click', function() {
    darkModex.classList.toggle('active');
})
</script>



<?php
  

?>