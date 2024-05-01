<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsideNUCES-PublicHome.aspx.cs" Inherits="InsideNUCES.InsideNUCES_PublicHome" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>InsideNUCES</title>
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

        .inputBox {
            position: relative;
            width: 500px;
            justify-content: center;
            align-items: center;
            margin-top: 38vh;
            margin-left: 74vh;
        }

            .inputBox input {
                width: 100%;
                padding: 10px;
                border: 1px solid #0c0c0d;
                background: #d0d4d9;
                border-radius: 5px;
                outline: none;
                color: #0c0c0d;
                font-size: 1em;
                transition: 0.65s;
            }

            .inputBox span {
                position: absolute;
                left: 0;
                padding: 10px;
                pointer-events: none;
                font-size: 1em;
                color: #0c0c0dc5;
                transition: 0.65s;
            }

            .inputBox input:valid ~ span, .inputBox input:focus ~ span {
                color: #0c0c0d;
                transform: translateX(10px) translateY(-7px);
                font-size: 0.9em;
                padding: 0 10px;
                background: #d0d4d9;
                border-left: 1px solid #0c0c0d;
                border-right: 1px solid #0c0c0d;
                letter-spacing: 0.2em;
                text-transform: uppercase;
            }

            .inputBox input:valid, .inputBox input:focus {
                border: 1px solid #1d2b3a;
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
                <li><a href="InsideNUCES-Teachers.aspx">Instructors</a></li>
            </ul>
        </div>
        <div class="inputBox">
            <input type="text" required="required" />
            <span>Search Teachers or Courses</span>
        </div>
    </form>
</body>
</html>