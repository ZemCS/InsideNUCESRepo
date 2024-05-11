<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsideNUCES-StudentHome.aspx.cs" Inherits="InsideNUCES.InsideNUCES_StudentHome" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>InsideNUCES</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
            text-transform:capitalize;
        }

        :root {
            --clr: #a12db5;
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
            justify-content: center;
            align-items: center;
        }

        .container {
            position: relative;
            display: flex;
            align-items: center;
            flex-wrap: wrap;
            width: 1200px;
            height: 400px;
            min-height: 76.6vh;
        }

        .tabs {
            position: relative;
            width: 80px;
            padding: 40px 0;
        }

            .tabs input {
                appearance: none;
                display: none;
            }

            .tabs .icon {
                position: relative;
                display: flex;
                flex-direction: column;
            }

                .tabs .icon label {
                    width: 80px;
                    height: 80px;
                    text-align: center;
                    line-height: 90px;
                    font-size: 2em;
                    color: #fff;
                    opacity: 0.5;
                    transition: 0.5s;
                    cursor: pointer;
                    z-index: 2;
                }

            .tabs input:nth-child(1):checked ~ .icon label:nth-child(1),
            .tabs input:nth-child(2):checked ~ .icon label:nth-child(2),
            .tabs input:nth-child(3):checked ~ .icon label:nth-child(3),
            .tabs input:nth-child(4):checked ~ .icon label:nth-child(4),
            .tabs input:nth-child(5):checked ~ .icon label:nth-child(5) {
                opacity: 1;
            }

        .indicator {
            position: absolute;
            width: 80px;
            height: 80px;
            background: #929080;
            z-index: 1;
            border-top-left-radius: 30px;
            border-bottom-left-radius: 30px;
            transition: 0.5s;
        }

            .indicator::before {
                content: '';
                position: absolute;
                top: -20px;
                right: 0;
                width: 20px;
                height: 20px;
                background: transparent;
                border-bottom-right-radius: 20px;
                box-shadow: 8px 8px 0 8px #929080;
            }

            .indicator::after {
                content: '';
                position: absolute;
                bottom: -20px;
                right: 0;
                width: 20px;
                height: 20px;
                background: transparent;
                border-top-right-radius: 20px;
                box-shadow: 8px -8px 0 8px #929080;
            }

        .tabs input:nth-child(1):checked ~ .icon .indicator {
            top: 0;
        }

        .tabs input:nth-child(2):checked ~ .icon .indicator {
            top: 25%;
        }

        .tabs input:nth-child(3):checked ~ .icon .indicator {
            top: 50%;
        }

        .tabs input:nth-child(4):checked ~ .icon .indicator {
            top: 75%;
        }


        .content {
            position: absolute;
            top: 0;
            left: 80px;
            width: 1040px;
            height: 800px;
            background: linear-gradient(90deg,#929080,#2f6f40);
            border-radius: 20px;
            margin-top: -150px;
        }

            .content .contentBrnch {
                position: absolute;
                inset: 0;
                padding: 50px;
                visibility: hidden;
                opacity: 0;
                transition: 0.5s;
            }

        .tabs input:nth-child(1):checked ~ .content .contentBrnch:nth-child(1),
        .tabs input:nth-child(2):checked ~ .content .contentBrnch:nth-child(2),
        .tabs input:nth-child(3):checked ~ .content .contentBrnch:nth-child(3),
        .tabs input:nth-child(4):checked ~ .content .contentBrnch:nth-child(4),
        .tabs input:nth-child(5):checked ~ .content .contentBrnch:nth-child(5) {
            opacity: 1;
            visibility: visible;
        }

        .content .contentBrnch h2 {
            color: #fff;
            font-size: 3em
        }

        .content .contentBrnch p {
            color: #fff;
            font-size: 1.25em;
        }

        .navBar {
            width: 85%;
            padding: 35px 0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-left: -38.1vh;
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
            position: absolute;
            width: 400px;
            justify-content: center;
            align-items: center;
            margin-top:-7.5vh;
            margin-left:120.5vh;
        }

            .inputBox input {
                width: 100%;
                padding: 10px;
                border: 1px solid #0c0c0d;
                background: #a9a0a0;
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
                background: #a9a0a0;
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
                <li><a href="InsideNUCES-PublicHome.aspx">Public Home</a></li>
                <li><a href="InsideNUCES-AdminHome.aspx">Admin Home</a></li>
                <li><a href="InsideNUCES-Teachers.aspx">Instructors</a></li>
                <li><a href="InsideNUCES-Courses.aspx">Courses</a></li>
            </ul>
        </div>
         <div class="inputBox">
            <input type="text" id="searchInput" required="required" onkeypress="searchKeyPress(event)" />
            <span>Search Teachers</span>
        </div>
        <div class="container">
            <div class="tabs">
                <input id="overview" type="radio" name="group" checked />
                <input id="transcript" type="radio" name="group" />
                <input id="attendance" type="radio" name="group" />
                <input id="timetable" type="radio" name="group" />
                <div class="icon">
                    <label for="overview">
                        <ion-icon name="person-outline"></ion-icon>
                    </label>
                    <label for="transcript">
                        <ion-icon name="document-text-outline"></ion-icon>
                    </label>
                    <label for="attendance">
                        <ion-icon name="checkmark-outline"></ion-icon>
                    </label>
                    <label for="timetable">
                        <ion-icon name="time-outline"></ion-icon>
                    </label>
                    <div class="indicator"></div>
                </div>
                <div class="content">
                    <div class="contentBrnch" for="overview">
                        <h2>Overview</h2><br>
                        <p><asp:Label ID="stdName" runat="server" Text="Name: "></asp:Label></p><br>
                        <p><asp:Label ID="stdRollNo" runat="server" Text="Roll Number: "></asp:Label></p><br>
                        <p><asp:Label ID="stdDegree" runat="server" Text="Degree: "></asp:Label></p><br>
                        <p><asp:Label ID="stdSection" runat="server" Text="Section: "></asp:Label></p><br>
                        <p><asp:Label ID="stdCGPA" runat="server" Text="CGPA: "></asp:Label></p><br>
                    </div>
                    <div class="contentBrnch" for="transcript">
                        <h2>Transcript</h2><br>
                        <p><asp:Label ID="stdT1" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdT2" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdT3" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdT4" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdT5" runat="server" Text=""></asp:Label></p><br>
                    </div>
                    <div class="contentBrnch" for="attendance">
                        <h2>Attendance</h2><br>
                        <p><asp:Label ID="stdA1" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdA2" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdA3" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdA4" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdA5" runat="server" Text=""></asp:Label></p><br>
                    </div>
                    <div class="contentBrnch" for="timetable">
                        <h2>Time Table</h2><br>
                        <p><asp:Label ID="stdV1" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdV2" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdV3" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdV4" runat="server" Text=""></asp:Label></p><br>
                        <p><asp:Label ID="stdV5" runat="server" Text=""></asp:Label></p><br>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    <script>
        function searchKeyPress(e) {
            e = e || window.event;
            if (e.key === 'Enter') {
                e.preventDefault(); // Prevent default form submission
                var searchText = document.getElementById('searchInput').value.trim();
                if (searchText !== '') {
                    // Replace spaces with '+' for URL
                    searchText = searchText.replace(/\s+/g, '+');
                    window.location.href = 'InsideNUCES-TeacherInfo.aspx?teacherName=' + searchText;
                }
            }
        }
</script>
</html>