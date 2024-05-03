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
                    <img src="https://lhr.nu.edu.pk/media/Faculty/44_-_Dr._Aamir_Wali_Asst_Prof__HoD_AIDS.JPG" alt="">
                    <h3>Aamir Wali</h3>
                    <p>Professor & HOD</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Aamir%20Wali" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/02_-_Dr._Kashif_Zafar_Prof__HoD_CS.png" alt="">
                    <h3>Kashif Zafar</h3>
                    <p>Professor & HOD</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Kashif%20Zafar" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/139_-_Dr._Akhlaq_Ahmad_Bhatti_Professor_Math.JPG" alt="">
                    <h3>Akhlaq Ahmad Bhatti</h3>
                    <p>Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Akhlaq%20Ahmad%20Bhatti" class="button">More details</a>
                </div>
            </div>
            <br>
            <div class="boxContainer">
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/05_-_Dr._Zareen_Alamgir_Assoc_Prof._CS.JPG" alt="">
                    <h3>Zareen Alamgir</h3>
                    <p>Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Zareen%20Alamgir" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/WhatsApp_Image_2023-06-19_at_09.52.55.jpg" alt="">
                    <h3>Saman Shahid</h3>
                    <p>Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Saman%20Shahid" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/01_-_Dr._Hammad_Naveed_Professor_CS__Director.JPG" alt="">
                    <h3>Hammad Naveed</h3>
                    <p>Adj. Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Hammad%20Naveed" class="button">More details</a>
                </div>
            </div>
            <br>
            <div class="boxContainer">
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/07_-_Dr._Saira_Karim_Asst_Prof_CS.JPG" alt="">
                    <h3>Saira Karim</h3>
                    <p>Associate Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Saira%20Karim" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/10_-_Dr._Zeeshan_Ali_Khan_Asst_Prof_CS.JPG" alt="">
                    <h3>Zeeshan Ali Khan</h3>
                    <p>Associate Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Zeeshan%20Ali%20Khan" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/Aatira_Anum.jpg" alt="">
                    <h3>Aatira Anum</h3>
                    <p>Assistant Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Aatira%20Anum" class="button">More details</a>
                </div>

            </div>
            <br>
            <div class="boxContainer">
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/144_-_Dr._Zahida_Mansoor_Asst_Professor_SH.JPG" alt="">
                    <h3>Zahida Mansoor</h3>
                    <p>Assistant Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Zahida%20Mansoor" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/4239.jfif" alt="">
                    <h3>Maimoona Akram</h3>
                    <p>Assistant Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Maimoona%20Akram" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/46-_Dr._Mirza_Mubasher_Baig_Asst._Prof._AI-DS.JPG" alt="">
                    <h3>Mirza Mubasher Baig</h3>
                    <p>Assistant Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Mirza%20Mubasher%20Baig" class="button">More details</a>
                </div>
            </div>
            <br>
            <div class="boxContainer">
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/4236_DlE9anc.jpg" alt="">
                    <h3>Muhammad Ahmad Raza</h3>
                    <p>Assistant Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Muhammad%20Ahmad%20Raza" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/images.jpeg-5-removebg-preview.png" alt="">
                    <h3>Samin Iftikhar</h3>
                    <p>Assistant Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Samin%20Iftikhar" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/6667_2.png" alt="">
                    <h3>Faisal Aslam</h3>
                    <p>Assistant Professor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Faisal%20Aslam" class="button">More details</a>
                </div>
            </div>
            <br>
            <div class="boxContainer">
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/21_-_Sobia_Tariq_Javed_Asst_Prof_CS.JPG" alt="">
                    <h3>Sobia Tariq Javed</h3>
                    <p>Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Sobia%20Tariq%20Javed" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/52-_Tazeem_Haider_Lecturer_AI-DS_WyQbhRR.JPG" alt="">
                    <h3>Tazeem Haider</h3>
                    <p>Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Tazeem%20Haider" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/37_-_Hira_Butt_Jun._Lecturer_CS_lxWdszd.JPG" alt="">
                    <h3>Hira Butt</h3>
                    <p>Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Hira%20Butt" class="button">More details</a>
                </div>
            </div>
            <br>
            <div class="boxContainer">
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/31-_M._Saif_Ul_Islam_Lecturer_CS.JPG" alt="">
                    <h3>Saif ul Islam</h3>
                    <p>Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Saif%20ul%20Islam" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/30_-_Mubashar_HussaIn_Lecturer_CS.jpg" alt="">
                    <h3>Mubashar Hussain</h3>
                    <p>Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Mubashar%20Hussain" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/26_-_Saifullah_Tanvir_Lecturer_CS_siJWJG8.jpg" alt="">
                    <h3>Saifullah Tanvir</h3>
                    <p>Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Muhammad%20Saifullah%20Tanvir" class="button">More details</a>
                </div>
            </div>
            <br>
            <div class="boxContainer">
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/49-_Sana_Fatima_Lecturer_AI-DS.JPG" alt="">
                    <h3>Sana Fatima</h3>
                    <p>Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Sana%20Fatima" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/6379.png" alt="">
                    <h3>Ansa Liaqat</h3>
                    <p>Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Ansa%20Liaqat" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/160_-_Kanwal_Saleem_Lecturer_Stats.JPG" alt="">
                    <h3>Kanwal Saleem</h3>
                    <p>Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Kanwal%20Saleem" class="button">More details</a>
                </div>
            </div>
            <br>
            <div class="boxContainer">
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/40_-_Salman_Shoaib_Instructor_CS.JPG" alt="">
                    <h3>Salman Shoaib</h3>
                    <p>Junior Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Salman%20Shoaib" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/6771.png" alt="">
                    <h3>Saba Tariq</h3>
                    <p>Junior Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Saba%20Tariq" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/38-_Mamoona_Akbar_Jun._Lecturer_CS.JPG" alt="">
                    <h3>Mamoona Akbar Khan</h3>
                    <p>Junior Lecturer</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Mamoona%20Akbar%20Khan" class="button">More details</a>
                </div>
            </div>
            <br>
            <div class="boxContainer">
                <div class="box">
                    <img src="https://lhr.nu.edu.pk/media/Faculty/Sohaib_Ahmad.jpg" alt="">
                    <h3>Sohaib Ahmad</h3>
                    <p>Lab Instructor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Sohaib%20Ahmad" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://static-00.iconduck.com/assets.00/person-icon-256x242-au2z2ine.png" alt="">
                    <h3>Haris Bin Rehan</h3>
                    <p>Lab Instructor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Haris%20Bin%20Rehan" class="button">More details</a>
                </div>
                <div class="box">
                    <img src="https://static-00.iconduck.com/assets.00/person-icon-256x242-au2z2ine.png" alt="">
                    <h3>Raida Munir</h3>
                    <p>Lab Instructor</p>
                    <a href="InsideNUCES-TeacherInfo.aspx?teacherName=Raida%20Munir" class="button">More details</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
