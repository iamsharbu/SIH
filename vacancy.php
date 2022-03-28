<?php
  include_once 'header.php';
  include 'includes\dbh.inc.php';
 ?>
 <!DOCTYPE html>
 <html>
 <head>

   <title>Vacancy</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/3/css/bootstrap.css" />
    <script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />

</head>


 <body style="background-color:#f6fbfc;">
   <p class="h2 heading">Welcome to Film Shooting Facilitation Portal</p>
   <div id="myCarousel" class="carousel slide" data-ride="carousel">

     <ol class="carousel-indicators">
       <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
       <li data-target="#myCarousel" data-slide-to="1"></li>
       <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
       <li data-target="#myCarousel" data-slide-to="4"></li>
     </ol>

     <div class="carousel-inner">
       <div class="item active">
         <img src="1473344552_Imperial-Rajasthan.jpg.jpg"  alt="">
         <div class="carousel-caption">
           <h3>Imperial Rajasthan</h3>
           <p>It's a great place to start your journey around India whether you wish to travel to South or North India. Imperial Journey is your young, energetic and dynamic travel partner based From New Delhi, India. Come to India with us and see your dream coming true with our unmatchable efforts and expertise..</p>
         </div>
       </div>

       <div class="item">
         <img src="img4.jpg" alt="">
         <div class="carousel-caption">
           <h3>Bikaner</h3>
           <p>Bikaner has been a favourite for vacationers from all over the world. They come here to see the local markets, rich heritage, cultural sites, Thar deserts and to experience the civilization that has remains since Harappan era.</p>
         </div>
       </div>

       <div class="item">
         <img src="View_of_Taj_Mahal_from_the_South_(from_the_platform_of_the_Great_Gate).jpg.webp" alt="">
         <div class="carousel-caption">
           <h3>Taj Mahal</h3>
           <p>The central government has decided to shift Taj Mahal to the national capital to celebrate 100 years of Delhi as the capital city of India. The master plan was approved in a cabinet meeting early this morning; the relocation work is slated to begin in February next year and is believed to conclude by the next birthday of Delhi</p>
         </div>
       </div>


     <div class="item">
       <img src="Delhi-by_Dennis_Jarvis-Flickr.jpg.webp" alt="">
       <div class="carousel-caption">
         <h3>Jarvis Flick's Delhi</h3>
         <p>Delhi, the capital of India is one of the perfect cities to enjoy the best of Indian culture. It is a city filled with must see landmarks, attractions and numerous other best places to visit in Delhi. It is a clean, neat and tidy city with wide roads. However, the beauty of the city often gets hidden behind the awful traffic jams and exhausting climate, especially during the summer season.</p>
       </div>
     </div>


   <div class="item">
     <img src="Akbari_Sarai.jpg.jpg" alt="">
     <div class="carousel-caption">
       <h3>Akbari Sarai</h3>
       <p>This is part of many good works done by Shershah Soor. He constructed a series of such sarais at every 5km all along route from Deccan to Delhi.
Ch. Shivaji Maharaj might have been here during his journey to Agra.</p>
     </div>
   </div>
 </div>
</div>

     <a class="left carousel-control carousell" href="#myCarousel" data-slide="prev">
       <span class="glyphicon glyphicon-chevron-left"></span>
       <span class="sr-only">Previous</span>
     </a>
     <a class="right carousel-control carouselr" href="#myCarousel" data-slide="next">
       <span class="glyphicon glyphicon-chevron-right"></span>
       <span class="sr-only">Next</span>
     </a>
   </div>




   <?php $check=$_SESSION['u_uid'];
   $sql="SELECT * FROM dataforms WHERE userid='$check'";
   $result=mysqli_query($conn,$sql);
   $resultcheck=mysqli_num_rows($result);
   if($resultcheck<1){


echo'<label for="daterange">Pick your Slot:</label>
 <input class="form-control" type="text" name="daterange" value="">
 <!-- <label for="pname">Production Name:</label>
 <input class="form-control" type="text" name="pname" value=""> -->
   <h2>A normal input datepicker</h2>
   <div>
     <input type="date" id="get1"/>
     <input type="date" id="get2"/>
   </div>
   <div class="form-row"> <input type="button"  onclick="check()"/> </div>
 <label for="pname">Start Date: </label>
 <input class="form-control" type="text" name="startdate" placeholder="YYYY-MM-DD" value="">
 <label for="pname">End Date: </label>
 <input class="form-control" type="text" name="enddate" placeholder="YYYY-MM-DD"  value="">
 <input type="submit" class="wrapper btn btn-primary spotsubmit" name="submit" value="Book Spot">
 <div id="put">temp</div>

 </form>

  </div>';


  $dates = [];
  $query="select startdate from dataforms";
  $result = $conn->query($query);
  $i=0;
  while($row=$result->fetch_assoc())
  {
     $dates[] = $row['startdate'];
     // echo $dates[$i];
     $i=$i+1;
  }






   }
   else {
     $status="";
        $query="select * from dataforms where userid='$check'";

        $result=mysqli_query($conn,$query);

        if (mysqli_num_rows($result) > 0) {
    // output data of each row
    while($row = mysqli_fetch_assoc($result)) {
        $status=$row['status'];
    }
  }

        if($status=="approved")
        {
          ?>
          <div class="col-md-7">
            <h2  style="color:green;">Your Submission is accepted. Check Your mail for FSFP License number!</h2>
          </div>
          <div class="col-md-5" style="float:right;">
            <iframe width="500" height="300" src="https://www.youtube.com/embed/AHIUFfC_wCs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
          </div>
          <?php
        }
        else {
          ?>
          <h2 style="color:red;text-align:center;">Your Request is under processing!!!</h2>
          <?php
          $query="select * from dataforms where userid='$check'";

          $result=mysqli_query($conn,$query);

          if(mysqli_num_rows($result)>0){
            while($row=mysqli_fetch_assoc($result)){
                ?>
                <div class="form-group col-md-7">


                <h2>Status</h2>
                <table class="table">

                <tr>
                  <td>Police Dept: </td><td><?php echo $row["policedepartment"]; ?></td>
                </tr>
                <tr>
                  <td>Municipal Dept: </td><td><?php echo $row["municipalauthority"]; ?></td>
                </tr>
                <tr>
                  <td>Government Approval: </td><td><?php echo $row["status"] ?></td>
                </tr>

              </table>
                </div>
                <div class="col-md-5" style="float:right;">
                  <iframe width="500" height="300" src="https://www.youtube.com/embed/AHIUFfC_wCs" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                </div>
                <?php
            }
          }
        }
   }
?>

<script>
var x;
function check(){
 <?php echo "<script>document.getElementById('get1').value; </script>" ?>
 // y=document.getElementById("get2").value;
 // var sdate="";
 // var pattern = /(\d{2})\.(\d{2})\.(\d{4})/;
 // var x = new Date(x.replace(pattern,'$3-$2-$1'));
 // var y = new Date(y.replace(pattern,'$3-$2-$1'));
 // var z = x.getFullYear()+'-'+(x.getMonth()+1)+'-'+x.getDate();
 // document.getElementById("put").innerHTML =z;

}
</script>

 </body>
 </html>

    <?php
      include_once 'footer.php';
    ?>
