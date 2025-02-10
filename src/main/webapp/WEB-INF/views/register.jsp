<%@page language="java" contentType="text/html; ISO-8859-1" %>


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Registration Form</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
  <style>
    body {
      background-color: #f8f9fa;
    }
    .registration-form {
      background: #fff;
      border-radius: 8px;
      box-shadow: 0 2px 6px rgba(78, 78, 78, 0.637);
      padding: 30px;
      max-width: 500px;
      margin: 50px auto;
    }
    .form-header {
      text-align: center;
      margin-bottom: 20px;
    }
    .btn-custom {
      background-color: #000;
      color: #fff;
    }
    .btn-custom:hover {
      background-color: #0056b3;
      color: #fff;
    }
    /* form input,form select{
        border:1px solid #00000091 !important;
    } */
    form input:focus,select:focus{
        box-shadow: 0px 0px 4px 4px  #0d0d0e3d !important;
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

    .custom-alert {
        position: fixed;
        top: 20%;
        left: 50%;
        transform: translate(-50%, -50%);
        z-index: 1050;
        width: 50%;
    }

  </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light fixed-top" style="background-color: white; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.233);">
    <div class="container-fluid">
        <!-- Navbar Brand -->
        <a class="navbar-brand d-flex align-items-center" href="/" style="margin-left: 2rem; font-size: 23px;">
            <i class="fas fa-water" style="color: #1e88e5; font-size: 28px; margin-right: 8px;"></i>
            <span><span style="color: rgb(218, 16, 16);">Aqu</span>anet</span>
        </a>
        <!-- Toggle Button -->
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!-- Navbar Links -->
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav ms-auto text-center">
                <a class="nav-link mx-3 d-flex align-items-center" href="/about"><i class="fas fa-envelope me-2"></i>Contact</a>
                <a class="nav-link mx-3 d-flex align-items-center" href="/register"><i class="fas fa-user-plus me-2"></i>Register</a>
                <a class="nav-link mx-3 d-flex align-items-center" href="/trackdata"><i class="fas fa-chart-line me-2"></i>Track Data</a>
            </div>
        </div>
    </div>
  </nav>

  <%
    String msg=(String)request.getAttribute("msg");
    if(msg!=null){
  %>
      <div id="successAlert" class="custom-alert alert alert-success alert-dismissible fade show" role="alert">
          <strong>Success!</strong> ${message}
          <button id="redirectBtn" class="btn btn-primary mt-3">Go to Home</button>
      </div>

<%
    }
%>
  <div class="container">
    <div class="registration-form" 
         style="max-width: 500px; margin: 85px auto 20px; padding: 30px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); background: white;">
      <h2 class="form-header" style="text-align: center; color: #444; margin-bottom: 25px; font-family: 'Montserrat', sans-serif;">Register</h2>
      <form action="/user/add">
        <!-- Full Name -->
        <div class="mb-3" style="position: relative;">
          <i class="fas fa-user" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #555;"></i>
          <input type="text" class="form-control" placeholder="Your Full Name" name="name" required
                 style="background: #f0f3f8; border: none; padding: 12px 12px 12px 40px; border-radius: 10px; width: 100%; font-size: 16px;">
        </div>
  
        <!-- Email -->
        <div class="mb-3" style="position: relative;">
          <i class="fas fa-envelope" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #555;"></i>
          <input type="email" class="form-control" placeholder="Email Address" name="mail" required
                 style="background: #f0f3f8; border: none; padding: 12px 12px 12px 40px; border-radius: 10px; width: 100%; font-size: 16px;">
        </div>
  
        <!-- Mobile Number -->
        <div class="mb-3" style="position: relative;">
          <i class="fas fa-phone" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #555;"></i>
          <input type="tel" class="form-control" placeholder="Mobile Number" name="phoneNumber" required
                 style="background: #f0f3f8; border: none; padding: 12px 12px 12px 40px; border-radius: 10px; width: 100%; font-size: 16px;">
        </div>
  
        <!-- Password -->
        <div class="mb-3" style="position: relative;">
          <i class="fas fa-lock" style="position: absolute; left: 12px; top: 50%; transform: translateY(-50%); color: #555;"></i>
          <input type="password" class="form-control" placeholder="Create Password" name="password" required
                 style="background: #f0f3f8; border: none; padding: 12px 12px 12px 40px; border-radius: 10px; width: 100%; font-size: 16px;">
        </div>
  
        <!-- Gender -->
        <div class="mb-3">
          <select class="form-select" name="gender" required
                  style="background: #f0f3f8; border: none; padding: 12px; border-radius: 10px; width: 100%; font-size: 16px; color: #555;">
            <option value="" disabled selected>Select Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
          </select>
        </div>
  
        <!-- Agree to Terms -->
        <div class="form-check mb-4">
          <input class="form-check-input" type="checkbox" id="terms" required>
          <label class="form-check-label" for="terms" style="font-size: 14px; color: #555;">I agree to the terms and conditions</label>
        </div>
  
        <!-- Submit Button -->
        <div class="d-grid">
          <button type="submit" class="btn btn-light" 
                  style="background: #6c63ff; color: #fff; border: none; padding: 12px 0; border-radius: 10px; font-size: 18px; font-weight: bold; font-family: 'Montserrat', sans-serif; cursor: pointer;">
            Register
          </button>
        </div>
      </form>
    </div>
  </div>

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

    <script>
        document.getElementById("redirectBtn")?.addEventListener("click", () => {
        window.location.href = "/";
        });
    </script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  
</body>
</html>
