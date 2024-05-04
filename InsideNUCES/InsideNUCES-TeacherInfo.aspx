﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsideNUCES-TeacherInfo.aspx.cs" Inherits="InsideNUCES.InsideNUCES_TeacherInfo" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Instructor - InsideNUCES</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
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
            min-height: 85vh;
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
            background: var(--clr);
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
                box-shadow: 8px 8px 0 8px var(--clr);
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
                box-shadow: 8px -8px 0 8px var(--clr);
            }

        .tabs input:nth-child(1):checked ~ .icon .indicator {
            top: 0;
        }

        .tabs input:nth-child(2):checked ~ .icon .indicator {
            top: 20%;
        }

        .tabs input:nth-child(3):checked ~ .icon .indicator {
            top: 40%;
        }

        .tabs input:nth-child(4):checked ~ .icon .indicator {
            top: 60%;
        }

        .tabs input:nth-child(5):checked ~ .icon .indicator {
            top: 80%;
        }

        .content {
            position: absolute;
            top: 0;
            left: 80px;
            width: 1040px;
            height: 800px;
            background: linear-gradient(90deg,var(--clr),#df0d54);
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="navBar">
            <ul>
                <li><a href="InsideNUCES-StudentHome.aspx">Student Home</a></li>
                <li><a href="InsideNUCES-AdminHome.aspx">Admin Home</a></li>
                <li><a href="InsideNUCES-Teachers.aspx">Instructors</a></li>
                <li><a href="InsideNUCES-Courses.aspx">Courses</a></li>
                <li><a href="InsideNUCES-PublicHome.aspx">Public Home</a></li>
            </ul>
        </div>
        <div class="container">
            <div class="tabs">
                <input id="bio" type="radio" name="group" checked />
                <input id="cv" type="radio" name="group" />
                <input id="courses" type="radio" name="group" />
                <input id="timings" type="radio" name="group" />
                <input id="ta" type="radio" name="group" />
                <div class="icon">
                    <label for="bio">
                        <ion-icon name="home-outline"></ion-icon>
                    </label>
                    <label for="cv">
                        <ion-icon name="document-outline"></ion-icon>
                    </label>
                    <label for="courses">
                        <ion-icon name="book-outline"></ion-icon>
                    </label>
                    <label for="timings">
                        <ion-icon name="time-outline"></ion-icon>
                    </label>
                    <label for="ta">
                        <ion-icon name="person-outline"></ion-icon>
                    </label>
                    <div class="indicator"></div>
                </div>
                <div class="content">
                    <div class="contentBrnch" for="bio">
                        <h2>BIO</h2>
                        <br>
                        <p>
                            <asp:Label ID="lblTeacherBio" runat="server" Text=""></asp:Label>
                        </p>
                        <br>
                        <br>
                        <p>
                            <asp:Label ID="lblTeacherEmail" runat="server" Text=""></asp:Label>
                        </p>
                        <br>
                        <p>
                            <asp:Label ID="lblTeacherNumber" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                    <div class="contentBrnch" for="cv">
                        <h2>Education</h2>
                        <br>
                        <p>
                            <asp:Label ID="lblTeacherBS" runat="server" Text=""></asp:Label>
                        </p>
                        <br>
                        <p>
                            <asp:Label ID="lblTeacherMS" runat="server" Text=""></asp:Label>
                        </p>
                        <br>
                        <p>
                            <asp:Label ID="lblTeacherPhD" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                    <div class="contentBrnch" for="courses">
                        <h2>Courses</h2>
                        <br>
                        <p>
                            <asp:Label ID="lblTeacherCourse1" runat="server" Text=""></asp:Label>
                        </p>
                        <br>
                        <p>
                            <asp:Label ID="lblTeacherCourse2" runat="server" Text=""></asp:Label>
                        </p>
                        <br>
                        <p>
                            <asp:Label ID="lblTeacherCourse3" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                    <div class="contentBrnch" for="timings">
                        <h2>Timings</h2>
                        <br>
                        <p>
                            <asp:Label ID="lblTeacherTimings" runat="server" Text=""></asp:Label>
                        </p>
                    </div>
                    <div class="contentBrnch" for="ta">
                        <h2>TA</h2>
                        <br>
                        <p>
                            <% 
                                if (lblTeacherTA_RollNo.Text != "")
                                {
                                    lblOpeningBracket.Text = "(";
                                    lblClosingBracket.Text = ")";
                                }
                                else
                                {
                                    lblOpeningBracket.Text = " ";
                                    lblClosingBracket.Text = " ";
                                }
                            %>
                            <asp:Label ID="lblTeacherTA" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblOpeningBracket" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblTeacherTA_RollNo" runat="server" Text=""></asp:Label>
                            <asp:Label ID="lblClosingBracket" runat="server" Text=""></asp:Label>
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</html>
