<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsideNUCES-Courses.aspx.cs" Inherits="InsideNUCES.InsideNUCES_Courses" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Courses - InsideNUCES</title>
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
                <li><a href="InsideNUCES-Teachers.aspx">Instructors</a></li>
                <li><a href="InsideNUCES-PublicHome.aspx">Public Home</a></li>
            </ul>
        </div>
        <div class="container">
            <h1>FAST - Lahore Courses</h1>
            <div class="boxContainer">
                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Programming Fundamentals</h3>
                    <p>This course covers the basics of programming, including syntax, data types, control structures, and algorithms.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Programming Fundamentals" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Operating Systems</h3>
                    <p>This course explores the principles and concepts behind operating systems, including process management, memory management, file systems, and security.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Operating Systems" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Data Mining</h3>
                    <p>This course introduces techniques for discovering patterns and knowledge from large datasets.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Data Mining" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Machine Learning</h3>
                    <p>This course covers algorithms and statistical models that enable computers to perform tasks without explicit programming.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Machine Learning" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Differential Equations</h3>
                    <p>This course covers the study of differential equations and their applications in various fields of science and engineering.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Differential Equations" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Calculus 1</h3>
                    <p>This course introduces the fundamental concepts of calculus, including limits, derivatives, and integrals.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Calculus 1" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Fundamentals of Software Engineering</h3>
                    <p>This course covers the basic principles and methodologies of software engineering, including requirements analysis, design, implementation, testing, and maintenance.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Fundamentals of Software Engineering" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Compiler Design</h3>
                    <p>This course explores the theory and practice of designing and implementing programming language compilers.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Compiler Design" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Programming Languages</h3>
                    <p>This course covers the principles and features of various programming languages, including syntax, semantics, and paradigms.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Programming Languages" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Computational Structural Biology</h3>
                    <p>This course explores computational methods for studying the structure and function of biological macromolecules.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Computational Structural Biology" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Drug Discovery</h3>
                    <p>This course covers the principles and techniques of drug discovery, including target identification, lead generation, and optimization.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Drug Discovery" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Biophysical Modeling</h3>
                    <p>This course covers computational methods for modeling biological systems at the molecular level.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Biophysical Modeling" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Database Systems</h3>
                    <p>This course covers the principles and techniques of designing, implementing, and managing database systems.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Database Systems" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Object Oriented Programming</h3>
                    <p>This course covers object-oriented programming concepts and techniques using a high-level programming language.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Object Oriented Programming" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Data Structures</h3>
                    <p>This course covers the implementation and analysis of fundamental data structures such as arrays, linked lists, trees, and graphs.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Data Structures" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Probability and Statistics</h3>
                    <p>This course covers basic concepts in probability theory and statistical methods.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Probability and Statistics" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Fundamentals of Big Data</h3>
                    <p>This course covers the principles and technologies behind big data processing and analytics.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Fundamentals of Big Data" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Statistics for Engineers</h3>
                    <p>This course covers statistical methods and techniques relevant to engineering applications.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Statistics for Engineers" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Introduction to Data Science</h3>
                    <p>This course provides an introduction to the interdisciplinary field of data science, covering topics such as data manipulation, visualization, and machine learning.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Introduction to Data Science" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Computer Networking</h3>
                    <p>This course covers the principles and protocols of computer networking, including local area networks, wide area networks, and the Internet.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Computer Networking" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Web Development</h3>
                    <p>This course covers the principles and technologies of web development, including HTML, CSS, JavaScript, and server-side scripting.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Web Development" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Statistical Learning</h3>
                    <p>This course covers advanced statistical techniques and machine learning algorithms for analyzing and interpreting data.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Statistical Learning" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Internet of Things</h3>
                    <p>This course covers the concepts, technologies, and applications of the Internet of Things (IoT).</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Internet of Things" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Algo</h3>
                    <p>This course covers algorithms and data structures for solving various computational problems efficiently.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Algo" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Computer Science Fundamentals</h3>
                    <p>This course covers fundamental concepts and theories in computer science, including algorithms, data structures, and complexity theory.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Computer Science Fundamentals" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Advanced Data Structures</h3>
                    <p>This course covers advanced data structures and their applications in solving complex computational problems.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Advanced Data Structures" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Data Science</h3>
                    <p>This course covers the entire data science pipeline, including data collection, cleaning, analysis, and interpretation.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Data Science" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Software Engineering</h3>
                    <p>This course covers software development methodologies, tools, and best practices for building reliable and scalable software systems.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Software Engineering" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Digital Logic Design</h3>
                    <p>This course covers the design and analysis of digital circuits and systems using logic gates.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Digital Logic Design" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Physics</h3>
                    <p>This course covers fundamental concepts and principles in physics, including mechanics, electromagnetism, and thermodynamics.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Physics" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Environmental Sciences</h3>
                    <p>This course covers the scientific study of the environment, including its physical, chemical, and biological aspects.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Environmental Sciences" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Environmental Data Science</h3>
                    <p>This course covers the application of data science techniques to environmental data for analysis and decision-making.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Environmental Data Science" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Computer Programming</h3>
                    <p>This course introduces the basics of computer programming, including problem-solving techniques and algorithm development.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Computer Programming" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Applied Programming</h3>
                    <p>This course covers the practical application of programming concepts to real-world problems and projects.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Applied Programming" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Computer Organization and Assembly Language</h3>
                    <p>This course covers the organization and architecture of computer systems, including assembly language programming and computer arithmetic.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Computer Organization and Assembly Language" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Computer Vision</h3>
                    <p>This course covers the theory and techniques for enabling computers to interpret and understand visual information from the real world.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Computer Vision" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Image Processing</h3>
                    <p>This course covers digital image processing techniques for enhancing, analyzing, and interpreting images.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Image Processing" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Introduction to Computer Science</h3>
                    <p>This course provides an introduction to the fundamental concepts and principles of computer science.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Introduction to Computer Science" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>English Composition and Comprehension</h3>
                    <p>This course focuses on developing writing and reading comprehension skills in English.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=English Composition and Comprehension" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Communication and Presentation Skills</h3>
                    <p>This course focuses on developing effective communication and presentation skills.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Communication and Presentation Skills" class="button">read more</a>
                </div>

                <div class="box">
                    <img src="https://cdn-icons-png.freepik.com/256/171/171322.png" alt="">
                    <h3>Embedded Systems Design</h3>
                    <p>This course covers the design and implementation of embedded systems, including hardware, software, and interfacing.</p>
                    <a href="InsideNUCES-CourseInfo.aspx?courseName=Embedded Systems Design" class="button">read more</a>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
