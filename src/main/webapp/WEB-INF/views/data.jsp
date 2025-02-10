<%@ page import="com.divyan.aquanet.model.SensorData" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@page language="java" contentType="text/html; ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sensor Data</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
  <link rel="stylesheet" href="style.css">
  <style>
    body {
      display: flex;
      flex-direction: column;
      min-height: 100vh;
      margin: 0;
    }
    main {
      flex: 1;
      margin-top: 75px;
    }
    .data-table {
      max-width: 95%;
      margin: 20px auto;
      border-radius: 10px;
      overflow: hidden;
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    }
    table {
      width: 100%;
      background: #fff;
      border-collapse: collapse;
    }
    th, td {
      padding: 10px; /* Reduced height */
      text-align: center;
      border: 1px solid #ddd;
    }
    th {
      background: #6c63ff;
      color: white;
      font-family: 'Montserrat', sans-serif;
    }
    tr:nth-child(even) {
      background: #f8f9fa;
    }
    tr:hover {
      background: #e8f0ff;
    }
    footer {
      /* background-color: #f8f9fa; */
      box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
      padding: 20px 0;
      text-align: center;
      width: 100%;
    }


     body{
         margin: 0;
         padding: 0;
         font-family: sans-serif;

     }

    .dashboard-card {
        background: #fff;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.192);
        text-align: center;
    }
    .dashboard-card:hover{
        scale:1.1;
        box-shadow: 2px 3px 5px  #bdbcbc;
        transition: scale ease-in 0.3s,box-shadow ease-in 0.3s;
    }
    .dashboard-card h3 {
        font-size: 24px;
        margin: 10px 0;
    }
    .dashboard-card p {
        font-size: 20px;
        color: #333;
    }

    nav{
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    footer{
        background-color: #000;
        color: white;

    }
    footer a{
        text-decoration: none;
        color:white;
    }
    footer a:hover{
        text-decoration: underline;
        color: #b1afafbe;
    }

    @keyframes rotate {
        0% {
            transform: rotate(0deg);
        }
        100% {
            transform: rotate(360deg);
        }
    }

    .rotate {
        animation: rotate 2s linear infinite; /* Rotate for 2 seconds continuously */
    }

  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: white; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.233);">
    <div class="container-fluid">
        <a class="navbar-brand d-flex align-items-center" href="/" style="margin-left: 2rem; font-size: 23px;">
            <i class="fas fa-water" style="color: #1e88e5; font-size: 28px; margin-right: 8px;"></i>
            <span><span style="color: rgb(218, 16, 16);">Aqu</span>anet</span>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto text-center">
                <a class="nav-link mx-3 d-flex align-items-center" href="/about"><i class="fas fa-envelope me-2"></i>Contact</a>
                <a class="nav-link mx-3 d-flex align-items-center" href="/register"><i class="fas fa-user-plus me-2"></i>Register</a>
                <a class="nav-link mx-3 d-flex align-items-center" href="/trackdata"><i class="fas fa-chart-line me-2"></i>Track Data</a>
            </div>
        </div>
    </div>
  </nav>

  <main>
    <div class="container">
      <div class="data-table">
        <table>
          <thead>
            <tr>
              <th>Timestamp</th>
              <th>pH Level</th>
              <th>Turbidity</th>
              <th>Temperature (°C)</th>
              <th>Conductivity (μS/cm)</th>
            </tr>
          </thead>
          <tbody id="t_body">

          </tbody>
        </table>
      </div>
    </div>
  </main>

  <footer  class="py-4">
    <div class="container">
        <div class="row">
            <!-- About Section -->
            <div class="col-md-4">
                <h5>About Aquanet</h5>
                <p >
                    Aquanet is a comprehensive water quality monitoring system that tracks key metrics like pH, turbidity, temperature, and conductivity, ensuring clean and safe water for all.
                </p>
            </div>
            <!-- Quick Links -->
            <div class="col-md-4">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="/" class=" "><i class="fas fa-home me-2"></i>Home</a></li>
                    <li><a href="/about" class=" "><i class="fas fa-envelope me-2"></i>Contact</a></li>
                    <li><a href="/register" class=""><i class="fas fa-user-plus me-2"></i>Register</a></li>
                    <li><a href="/data" class=" "><i class="fas fa-chart-line me-2"></i>Track Data</a></li>
                </ul>
            </div>
            <!-- Social Media -->
            <div class="col-md-4 ">
                <h5>Follow Us</h5>
                <a href="#" class=" me-2"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class=" me-2"><i class="fab fa-twitter"></i></a>
                <a href="#" class=" me-2"><i class="fab fa-instagram"></i></a>
                <a href="#" class=" me-2"><i class="fab fa-linkedin"></i></a>
            </div>
        </div>
        <hr class="bg-light">
        <div class="text-center">
            <p class="mb-0">&copy; 2024 Aquanet. All rights reserved.</p>
        </div>
    </div>
 
</footer>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>



    async function fetchData(){
        try{

            const response=await fetch("http://localhost:8081/sensor/all");
            const records=await response.json();

            const tablebody=document.getElementById("t_body");
            tablebody.innerHTML=''

            records.forEach((record)=>{

                console.log("record: ",record.ph)
                console.log("record: ",record.temperature)
                console.log("record: ",record.turbidity)
                console.log("record: ",record.conductivity)
                console.log("record: ",record.timeStamp)

                const row="<tr><td>"+record.timeStamp+"</td><td>"+record.ph+"</td><td>"+record.turbidity+"</td><td>"+record.temperature+"</td><td>"+record.conductivity+"</td></tr>";



                tablebody.insertAdjacentHTML("beforeend",row);

            });

        }catch (e) {
            console.log("Error fetching data : ",e)
        }
    }

    window.onload=fetchData();

</script>
</body>
</html>
