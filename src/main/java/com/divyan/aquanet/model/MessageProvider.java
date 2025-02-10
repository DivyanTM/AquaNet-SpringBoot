package com.divyan.aquanet.model;

public class MessageProvider {

    public static String getwelcomeMessage(String name) {

        String message="""
                <!DOCTYPE html>
                       <html lang="en">
                       <head>
                           <meta charset="UTF-8">
                           <meta name="viewport" content="width=device-width, initial-scale=1.0">
                           <title>Welcome to AquaNet</title>
                           <style>
                               body {
                                   font-family: 'Arial', sans-serif;
                                   margin: 0;
                                   padding: 0;
                                   background-color: #e3f2fd; /* Light blue background */
                               }
                       
                               .email-container {
                                   max-width: 600px;
                                   margin: 20px auto;
                                   background: #ffffff;
                                   border-radius: 10px;
                                   box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
                                   overflow: hidden;
                               }
                       
                               .header {
                                   background-color: #0077c2; /* Aqua blue header */
                                   color: white;
                                   text-align: center;
                                   padding: 20px;
                               }
                       
                               .header h1 {
                                   margin: 0;
                                   font-size: 24px;
                                   letter-spacing: 1px;
                               }
                       
                               .content {
                                   padding: 20px;
                                   color: #333;
                               }
                       
                               .content h2 {
                                   color: #0077c2; /* Aqua blue text for headings */
                                   font-size: 22px;
                                   margin-top: 0;
                               }
                       
                               .content p {
                                   line-height: 1.6;
                                   margin: 10px 0;
                               }
                       
                               .cta-button {
                                   display: inline-block;
                                   margin: 20px 0;
                                   padding: 10px 20px;
                                   background-color: #0077c2;
                                   color: white;
                                   text-decoration: none;
                                   border-radius: 5px;
                                   font-weight: bold;
                                   box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
                               }
                       
                               .cta-button:hover {
                                   background-color: #005fa3;
                               }
                       
                               .footer {
                                   text-align: center;
                                   padding: 15px;
                                   background: #f1f1f1;
                                   border-top: 1px solid #ddd;
                                   font-size: 14px;
                                   color: #666;
                               }
                       
                               .footer a {
                                   color: #0077c2;
                                   text-decoration: none;
                               }
                       
                               .footer a:hover {
                                   text-decoration: underline;
                               }
                           </style>
                       </head>
                       <body>
                       <div class="email-container">
                           <div class="header">
                               <h1>Welcome to AquaNet!</h1>
                           </div>
                           <div class="content">
                               <h2>Dear"""+" "+name+"""
                               ,
                               </h2>
                               <p>Thank you for joining AquaNet, your trusted source for clean and safe water solutions.</p>
                               <p>We're thrilled to have you on board! Our platform is designed to provide you with cutting-edge solutions for all your water management needs.</p>
                               <p>Explore the features and tools we’ve tailored for you by clicking the button below:</p>
                               <a href="http://localhost:8080" style='color:white;' class="cta-button">Get Started</a>
                           </div>
                           <div class="footer">
                               <p>&copy; 2024 AquaNet. All rights reserved.</p>
                               <p>Need assistance? Contact us at <a href="mailto:divyanthiruvalarselvan@gmail.com">support@aquanet.example.com</a></p>
                           </div>
                       </div>
                       </body>
                       </html>
                       
    """;

        return message;
    }


    public static String getWarningMessage(String parameter,String current,String treshold){
        String message= """
                
                <!DOCTYPE html>
                <html lang="en">
                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Water Quality Alert</title>
                    <style>
                        body {
                            font-family: 'Arial', sans-serif;
                            background-color: #e3f2fd;
                            margin: 0;
                            padding: 0;
                        }
                        .container {
                            max-width: 600px;
                            margin: 50px auto;
                            background-color: #ffffff;
                            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                            border-radius: 10px;
                            overflow: hidden;
                        }
                        .header {
                            background-color: #00796b;
                            color: white;
                            text-align: center;
                            padding: 20px;
                            font-size: 24px;
                            font-weight: bold;
                        }
                        .content {
                            padding: 20px;
                            color: #333;
                            text-align: center;
                        }
                        .reading {
                            font-weight: bold;
                            color: #d32f2f;
                        }
                        .safe-range {
                            font-weight: bold;
                            color: #388e3c;
                        }
                        .footer {
                            text-align: center;
                            background-color: #f1f1f1;
                            padding: 10px;
                            font-size: 14px;
                            color: #777;
                        }
                        .btn {
                            display: inline-block;
                            padding: 10px 20px;
                            background-color: #0288d1;
                            color: white;
                            text-decoration: none;
                            border-radius: 5px;
                            margin-top: 20px;
                        }
                        .btn:hover {
                            background-color: #0277bd;
                        }
                        .sensor-icon {
                            font-size: 50px;
                            color: #00796b;
                            margin-bottom: 20px;
                        }
                    </style>
                </head>
                <body>
                <div class="container">
                    <div class="header">
                        🌊 Water Quality Alert
                    </div>
                    <div class="content">
                        <div class="sensor-icon">💧</div>
                        <p><b>Parameter:</b> """+
        parameter+" "+          """
                         Level</p>
                        <p>Current Reading: <span class="reading">"""+
                current+
                        """
                        </span></p>
                        <p>Safe Range: <span class="safe-range">"""+treshold+"""
                        </span></p>
                        <p>The water quality is currently outside the safe threshold. Immediate attention is required!</p>
                        <a href="http://localhost:8080/" class="btn">View Dashboard</a>
                    </div>
                    <div class="footer">
                        This message is auto-generated by AquaNet WQM System.
                    </div>
                </div>
                </body>
                </html>
                                
                """;
        return message;
    }

}
