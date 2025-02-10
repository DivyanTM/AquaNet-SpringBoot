<%@ page language="java" contentType="text/html; ISO-8859-1" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aquanet</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>

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
<body style="background-color: #f8f9fad7;">
    <!-- Navbar -->
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

    
    <div class="container" style="margin-top: 100px;">
        <h1 class="text-center mb-4">
          <i class="fas fa-tachometer-alt" id="dashboardIcon" style="color:orangered;"></i> Dashboard
        </h1>
        <div class="row">
            <div class="col-md-3 mb-3">
                <div id="phCard" class="dashboard-card" style="padding: 20px; background: #fff; border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); border-bottom: 5px solid green;">
                    <h3>pH</h3>
                    <p id="phValue">7.0 pH</p>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div id="turbidityCard" class="dashboard-card" style="padding: 20px; background: #fff; border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); border-bottom: 5px solid red;">
                    <h3>Turbidity</h3>
                    <p id="turbidityValue">10 NTU</p>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div id="temperatureCard" class="dashboard-card" style="padding: 20px; background: #fff; border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); border-bottom: 5px solid yellow;">
                    <h3>Temperature</h3>
                    <p id="temperatureValue">25°C</p>
                </div>
            </div>
            <div class="col-md-3 mb-3">
                <div id="conductivityCard" class="dashboard-card" style="padding: 20px; background: #fff; border-radius: 10px; box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); border-bottom: 5px solid green;">
                    <h3>Conductivity</h3>
                    <p id="conductivityValue">500 µS/cm</p>
                </div>
            </div>
        </div>

    </div>

    <%--       graph with 500 and height 200         --%>
    <div class="container" style="margin-top: 70px;">
        <div class="row">
            <div class="col-md-12 mb-4" >

                <canvas id="phChart" width="500" height="150" ></canvas>
            </div>
            <div class="col-md-12 mb-4">
                <canvas id="turbidityChart" width="500" height="150"></canvas>
            </div>
            <div class="col-md-12 mb-4">
                <canvas id="temperatureChart" width="500" height="150"></canvas>
            </div>
            <div class="col-md-12 mb-4">
                <canvas id="conductivityChart" width="500" height="150"></canvas>
            </div>
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

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>

    phList = [];
    tubidityList = [];
    temperatureList = [];
    conductivityList = [];
    labels = [];


    function createChart(ctx, label, data, color) {
    return new Chart(ctx, {
    type: 'line',
    data: {
    labels: labels,
    datasets: [
    {
    label: label,
    data: data,
    borderColor: color,
    tension: 0.4,
    fill: false,
    },
    ],
    },
    options: {
        responsive: true,
    plugins: {
    legend: {
    position: 'top',
    },
    },
    },
    });
    }

    const thresholds = {
        ph: { min: 6.5, max: 7.5, normal: 'green', low: 'red', high: 'orange' },
        turbidity: { min: 0, max: 5, normal: 'green', low: 'red', high: 'yellow' },
        temperature: { min: 10, max: 30, normal: 'green', low: 'yellow', high: 'red' },
        conductivity: { min: 0, max: 500, normal: 'green', low: 'red', high: 'orange' },
    };


    function updateBorderColor(sensorType, value) {
        console.log(sensorType)
        let cardId = sensorType+'Card';
        console.log(cardId)
        let cardElement = document.getElementById(cardId);


        if (cardElement) {

            if (!cardElement.style.borderBottomColor) {
                cardElement.style.borderBottom = "5px solid";
            }


            if (value < thresholds[sensorType].min) {
                cardElement.style.borderBottomColor = thresholds[sensorType].low;
            } else if (value > thresholds[sensorType].max) {
                cardElement.style.borderBottomColor = thresholds[sensorType].high;
            } else {
                cardElement.style.borderBottomColor = thresholds[sensorType].normal;
            }
        } else {
            console.error(`Element with ID ${cardId} not found.`);
        }
    }


    window.onload = function () {
    const dashboardIcon = document.getElementById('dashboardIcon');
    fetchCurrentData();
    getLastFive();
    dashboardIcon.classList.add('rotate');


    setTimeout(() => {
    dashboardIcon.classList.remove('rotate');
    }, 7000);
    };


    const phChartCtx = document.getElementById('phChart').getContext('2d');
    const phChart = createChart(phChartCtx, 'pH Levels', phList, '#42a5f5');

    const turbidityChartCtx = document.getElementById('turbidityChart').getContext('2d');
    const turbidityChart = createChart(turbidityChartCtx, 'Turbidity', tubidityList, '#66bb6a');

    const temperatureChartCtx = document.getElementById('temperatureChart').getContext('2d');
    const temperatureChart = createChart(temperatureChartCtx, 'Temperature (°C)', temperatureList, 'orangered');

    const conductivityChartCtx = document.getElementById('conductivityChart').getContext('2d');
    const conductivityChart = createChart(conductivityChartCtx, 'Conductivity (µS/cm)', conductivityList, '#ffa726');


    const eventSource = new EventSource('/sensor/stream');

    eventSource.onopen = function () {
    console.log('Connection established');
    };

    eventSource.onerror = function (err) {
    console.error('EventSource error:', err);
    };

    eventSource.onmessage = function(event) {
        const data = JSON.parse(event.data);


        document.getElementById('phValue').innerText = data.ph + ' pH';
        document.getElementById('turbidityValue').innerText = data.turbidity + ' NTU';
        document.getElementById('temperatureValue').innerText = data.temperature + '°C';
        document.getElementById('conductivityValue').innerText = data.conductivity + ' µS/cm';



        phList.push(data.ph);
        tubidityList.push(data.turbidity);
        temperatureList.push(data.temperature);
        conductivityList.push(data.conductivity);
        labels.push('');

        if(phList.length>5){
            phList.splice(0,phList.length-5);
            temperatureList.splice(0,temperatureList.length-5);
            conductivityList.splice(0,conductivityList.length-5);
            tubidityList.splice(0,tubidityList.length-5);
            labels.splice(0,labels.length-5);
        }

        phChart.update();
        turbidityChart.update();
        temperatureChart.update();
        conductivityChart.update();


        updateBorderColor('ph', data.ph);
        updateBorderColor('turbidity', data.turbidity);
        updateBorderColor('temperature', data.temperature);
        updateBorderColor('conductivity', data.conductivity);
    };

    async function fetchCurrentData(){
        const response=await fetch("http://localhost:8081/sensor/current");
        const data=await response.json();

        document.getElementById('phValue').innerText = data.ph + ' pH';
        document.getElementById('turbidityValue').innerText = data.turbidity + ' NTU';
        document.getElementById('temperatureValue').innerText = data.temperature + '°C';
        document.getElementById('conductivityValue').innerText = data.conductivity + ' µS/cm';

        updateBorderColor('ph', data.ph);
        updateBorderColor('turbidity', data.turbidity);
        updateBorderColor('temperature', data.temperature);
        updateBorderColor('conductivity', data.conductivity);
    }

    async function getLastFive(){
        const response=await fetch("http://localhost:8081/sensor/lastfive");
        const list=await response.json();

        list.forEach(data=>{
            phList.push(data.ph);
            tubidityList.push(data.turbidity);
            temperatureList.push(data.temperature);
            conductivityList.push(data.conductivity);
            labels.push(data.timeStamp);


            phChart.update();
            turbidityChart.update();
            temperatureChart.update();
            conductivityChart.update();
        });
    }

    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
