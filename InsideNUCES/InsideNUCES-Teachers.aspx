<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsideNUCES-Teachers.aspx.cs" Inherits="InsideNUCES.InsideNUCES_Teachers" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Instructors - InsideNUCES</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap');

        * {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            outline: none;
            border: none;
            text-decoration: none;
            text-transform: capitalize;
            transition: 0.2s linear;
        }

        body::before {
            content: "";
            background-image: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)), url('https://scontent-lhr8-1.xx.fbcdn.net/v/t39.30808-6/310505761_2870059669968752_2740186850350197172_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=pgim-04xjtsAX_MP5_W&_nc_ht=scontent-lhr8-1.xx&oh=00_AfB1KSYyNMi9K4Hu2bNznHOu7i_ttYYgAwj0eW3iPiKIgg&oe=660239B8');
            background-size: cover;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            opacity: 0.95;
            z-index: -1;
        }

        body {
            display: flex;
            flex-direction: column;
            flex-wrap: wrap;
            overflow: hidden;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        .navBar {
            width: 85%;
            padding: 35px 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

            .navBar ul li {
                list-style: none;
                display: inline-block;
                margin: 0 20px;
                position: relative;
            }

                .navBar ul li a {
                    text-decoration: none;
                    color: white;
                    text-transform: uppercase;
                }

                .navBar ul li::after {
                    content: '';
                    height: 3px;
                    width: 0;
                    background: #009688;
                    position: absolute;
                    left: 0;
                    bottom: -10px;
                    transition: .65s;
                }

                .navBar ul li:hover::after {
                    width: 100%;
                }

        .container {
            padding: 15px 9%;
            padding-bottom: 100px;
        }

            .container h1 {
                text-align: center;
                padding-bottom: 15px;
                color: #fff;
                text-shadow: 0 5px 10px rgba(0,0,0,0.2);
                font-size: 50px;
            }

            .container .boxContainer {
                display: grid;
                grid-template-columns: repeat(auto-fit, minmax(270px, 1fr));
                gap: 15px;
            }

                .container .boxContainer .box {
                    box-shadow: 0 5px 10px rgba(0,0,0,0.2);
                    border-radius: 5px;
                    background: #fff;
                    text-align: center;
                    padding: 30px 20px;
                }

                    .container .boxContainer .box img {
                        height: 80px;
                    }

                    .container .boxContainer .box h3 {
                        color: #444;
                        font-size: 22px;
                        padding: 10px 0;
                    }

                    .container .boxContainer .box p {
                        color: #777;
                        font-size: 15px;
                        line-height: 1.8;
                    }

                    .container .boxContainer .box .button {
                        margin-top: 10px;
                        display: inline-block;
                        background: #333;
                        color: #fff;
                        font-size: 17px;
                        border-radius: 5px;
                        padding: 8px 25px;
                    }

                        .container .boxContainer .box .button:hover {
                            letter-spacing: 1px;
                        }

                    .container .boxContainer .box:hover {
                        box-shadow: 0 10px 15px rgba(0,0,0,0.3);
                        transform: scale(1.03);
                    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navBar">
            <ul>
                <li><a href="InsideNUCES-StudentHome.aspx">Student Home</a></li>
                <li><a href="InsideNUCES-AdminHome.aspx">Admin Home</a></li>
                <li><a href="InsideNUCES-Courses.aspx">Courses</a></li>
                <li><a href="InsideNUCES-PublicHome.aspx">Public Home</a></li>
            </ul>
        </div>
        <div class="container">
            <h1>FAST - Lahore Instructors</h1>
            <!-- Adjusted selector to use h1 -->
            <div class="boxContainer">
                <div class="box">
                    <img src="https://static-00.iconduck.com/assets.00/person-icon-256x242-au2z2ine.png" alt="">
                    <h3>TEACHER NAME</h3>
                    <p>Quick Overview</p>
                    <a href="InsideNUCES-TeacherInfo.aspx" class="button">read more</a>
                </div>
                <div class="box">
                    <img src="https://static-00.iconduck.com/assets.00/person-icon-256x242-au2z2ine.png" alt="">
                    <h3>TEACHER NAME</h3>
                    <p>Quick Overview</p>
                    <a href="InsideNUCES-TeacherInfo.aspx" class="button">read more</a>
                </div>
                <div class="box">
                    <img src="https://static-00.iconduck.com/assets.00/person-icon-256x242-au2z2ine.png" alt="">
                    <h3>TEACHER NAME</h3>
                    <p>Quick Overview</p>
                    <a href="InsideNUCES-TeacherInfo.aspx" class="button">read more</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>