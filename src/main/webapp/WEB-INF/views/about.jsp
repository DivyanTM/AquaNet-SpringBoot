<%@page language="java" contentType="text/html; ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About Us</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
  <style>
    body {
      display: flex;
      flex-direction: column;
      min-height: 100vh;
      margin: 0;
      font-family: 'Arial', sans-serif;
    }
    main {
      flex: 1;
      margin-top: 75px;
    }
    .about-header {
      text-align: center;
      margin: 40px 0;
    }
    .about-header h1 {
      font-family: 'Montserrat', sans-serif;
      color: #6c63ff;
      font-size: 36px;
      margin-bottom: 10px;
    }
    .about-header p {
      color: #6c63ff;
      font-size: 18px;
    }
    .service-card {
      background-color: #f9f9f9;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
      text-align: center;
    }
    .service-card i {
      font-size: 40px;
      color: #6c63ff;
      margin-bottom: 15px;
    }
    .service-card h4 {
      color: #333;
      font-size: 20px;
      margin-bottom: 10px;
    }
    .service-card p {
      color: #777;
    }
    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }
    table th, table td {
      padding: 12px;
      text-align: left;
      border: 1px solid #ddd;
      font-size: 16px;
    }
    table th {
      background-color: #6c63ff;
      color: white;
    }
    table tr:nth-child(even) {
      background-color: #f2f2f2;
    }
    table tr:hover {
      background-color: #e0e0e0;
    }
    .team-info {
      margin-top: 40px;
      text-align: center;
    }
    .team-info span {
      font-weight: bold;
      color: #6c63ff;
    }
    footer {
      box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
      padding: 20px 0;
      text-align: center;
      width: 100%;
    }
    .footer-links a {
      display: block;
      margin-right: 15px;
      text-decoration: none;
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
      <div class="about-header">
        <h1>About Us</h1>
        <p>Learn more about what we do and the services we offer!</p>
      </div>

      <div class="row">
        <div class="col-md-4">
          <div class="service-card">
            <i class="fas fa-water"></i>
            <h4>Water Quality Monitoring</h4>
            <p>We provide real-time water quality monitoring services, ensuring your water is clean and safe.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="service-card">
            <i class="fas fa-chart-line"></i>
            <h4>Data Analysis</h4>
            <p>Our platform allows you to track water quality data over time, enabling informed decisions for better management.</p>
          </div>
        </div>
        <div class="col-md-4">
          <div class="service-card">
            <i class="fas fa-bolt"></i>
            <h4>Real-Time Alerts</h4>
            <p>Receive instant alerts for any deviations in water quality, ensuring quick action to mitigate risks.</p>
          </div>
        </div>
      </div>
      <br>
      <br><br>
      <h2 style="font-size: 28px; font-weight: bold; color: #2c3e50; margin-bottom: 15px;">Why Water Quality is Important</h2>
      <p style="font-size: 18px; line-height: 1.6; color: #34495e; margin-bottom: 25px; background-color: #ecf0f1; padding: 15px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
        Water quality is critical for health and environmental sustainability. Contaminated water can cause serious health issues, such as waterborne diseases, and can damage ecosystems. Ensuring clean and safe water is essential for the well-being of communities and the preservation of natural resources.
      </p>
      
      <h2 style="font-size: 28px; font-weight: bold; color: #2c3e50; margin-bottom: 15px;">Why We Took This Initiative</h2>
      <p style="font-size: 18px; line-height: 1.6; color: #34495e; margin-bottom: 25px; background-color: #ecf0f1; padding: 15px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
        With increasing pollution and industrial activities affecting water sources, we felt the need to take action. Our initiative aims to monitor and improve water quality, raise awareness about its importance, and help in decision-making for better water management practices. This system is designed to provide easy access to real-time data, ensuring the water we rely on remains safe and clean.
      </p>
      

      <h2 class="text-center" style="font-size: 24px; font-weight: bold; margin-bottom: 20px;">Water Quality Parameters and Their Levels</h2>
<table style="width: 100%; border-collapse: collapse; box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); border: 1px solid #ddd;">
  <thead style="background-color: #4CAF50; color: white;">
    <tr>
      <th style="padding: 12px 20px; text-align: left; border-bottom: 2px solid #ddd;">Water Quality Parameter</th>
      <th style="padding: 12px 20px; text-align: left; border-bottom: 2px solid #ddd;">Ideal Level</th>
      <th style="padding: 12px 20px; text-align: left; border-bottom: 2px solid #ddd;">High/Low Risk Levels</th>
    </tr>
  </thead>
  <tbody>
    <tr style="background-color: #f9f9f9; border-bottom: 1px solid #ddd;">
      <td style="padding: 12px 20px;">pH Level</td>
      <td style="padding: 12px 20px;">6.5 - 8.5</td>
      <td style="padding: 12px 20px;">Below 6 or Above 9 (Risk of contamination and adverse effects)</td>
    </tr>
    <tr style="background-color: #ffffff; border-bottom: 1px solid #ddd;">
      <td style="padding: 12px 20px;">Turbidity</td>
      <td style="padding: 12px 20px;">Below 5 NTU</td>
      <td style="padding: 12px 20px;">Above 5 NTU (Indicates high levels of suspended particles)</td>
    </tr>
    <tr style="background-color: #f9f9f9; border-bottom: 1px solid #ddd;">
      <td style="padding: 12px 20px;">Temperature</td>
      <td style="padding: 12px 20px;">18°C - 22°C</td>
      <td style="padding: 12px 20px;">Above 22°C (Harmful to aquatic life)</td>
    </tr>
    <tr style="background-color: #ffffff;">
      <td style="padding: 12px 20px;">Conductivity</td>
      <td style="padding: 12px 20px;">200-800 µS/cm</td>
      <td style="padding: 12px 20px;">Above 800 µS/cm (Indicates high dissolved solids)</td>
    </tr>
  </tbody>
</table>
<h2 style="font-size: 28px; font-weight: bold; color: #6c63ff; margin-top: 30px;text-align: center;">Contact Us</h2>
<p style="font-size: 16px; color: #34495e; margin-bottom: 15px;text-align: center;">
  Have questions or want to get involved? Reach out to us using the form below.
</p>
<div class="container">
    <div class="registration-form" 
         style="max-width: 800px; margin: 5px auto 20px; padding: 30px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); background: white;">
      <form>
        <!-- Full Name -->
        <div class="mb-3" style="position: relative;">
          <i class="fas fa-user" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #555;"></i>
          <input type="text" class="form-control" placeholder="Your Full Name" required 
                 style="background: #f0f3f8; border: none; padding: 12px 12px 12px 40px; border-radius: 10px; width: 100%; font-size: 16px;">
        </div>
  
        <!-- Email -->
        <div class="mb-3" style="position: relative;">
          <i class="fas fa-envelope" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #555;"></i>
          <input type="email" class="form-control" placeholder="Email Address" required 
                 style="background: #f0f3f8; border: none; padding: 12px 12px 12px 40px; border-radius: 10px; width: 100%; font-size: 16px;">
        </div>
  
        <!-- Mobile Number -->
        <div class="mb-3" style="position: relative;">
          <i class="fas fa-phone" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #555;"></i>
          <input type="tel" class="form-control" placeholder="Mobile Number" required 
                 style="background: #f0f3f8; border: none; padding: 12px 12px 12px 40px; border-radius: 10px; width: 100%; font-size: 16px;">
        </div>
        
        <div class="mb-3" style="position: relative;">
          <i class="fas fa-pen" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #555;"></i>
          <textarea style="background: #f0f3f8; border: none; padding: 12px 12px 12px 40px; border-radius: 10px; width: 100%; font-size: 16px;" placeholder="write your queries" class="form-control"></textarea>
        </div>

        <!-- Submit Button -->
        <div class="d-grid">
          <button type="submit" class="btn btn-light" 
                  style="background: #6c63ff; color: #fff; border: none; padding: 12px 0; border-radius: 10px; font-size: 18px; font-weight: bold; font-family: 'Montserrat', sans-serif; cursor: pointer;">
            Send
          </button>
        </div>
      </form>
    </div>
  </div>
  
      <div class="team-info mt-5">
        <h3 class="text-center mb-4" style="font-size: 36px; color: #6c63ff; font-weight: 600;">Our Team</h3>
        <div class="row">
          <div class="col-md-6 mb-4">
            <div class="card shadow-sm" style="border-radius: 10px; border: 1px solid #ddd;">
              <div class="card-body text-center">
                <h5 style="color: #333; font-weight: 500;">ARISHKANNAN A</h5>
                <p style="color: #777;">Register No: 8208E22ITR005</p>
                <p style="color: #6c63ff; font-weight: 600;">Python Fullstack Developer</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 mb-4">
            <div class="card shadow-sm" style="border-radius: 10px; border: 1px solid #ddd;">
              <div class="card-body text-center">
                <h5 style="color: #333; font-weight: 500;">DIVYAN T</h5>
                <p style="color: #777;">Register No: 8208E22ITR012</p>
                <p style="color: #6c63ff; font-weight: 600;">Java Fullstack Developer</p>
              </div>
            </div>
          </div>
        </div>
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
                    <li><a href="/trackdata" class=" "><i class="fas fa-chart-line me-2"></i>Track Data</a></li>
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
</body>
</html>
