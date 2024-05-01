<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InsideNUCES-SignUp.aspx.cs" Inherits="InsideNUCES.WebForm1" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Sign Up - InsideNUCES</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body::before {
            content: "";
            background-image: linear-gradient(#7298ba64,#7298ba64), url('https://scontent-lhr8-1.xx.fbcdn.net/v/t39.30808-6/310505761_2870059669968752_2740186850350197172_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=5f2048&_nc_ohc=pgim-04xjtsAX_MP5_W&_nc_ht=scontent-lhr8-1.xx&oh=00_AfB1KSYyNMi9K4Hu2bNznHOu7i_ttYYgAwj0eW3iPiKIgg&oe=660239B8');
            background-size: cover;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            opacity: 0.95;
            z-index: -1;
        }


        body::after {
            content: "";
            background-image: url('https://i.pinimg.com/originals/95/65/ac/9565acb26c627decd036b2118fdb68f3.png');
            background-size: cover;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%) scaleY(-1);
            width: 35%;
            height: 80%;
            z-index: -1;
            border-radius: 20px;
            opacity: 0.9;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 105vh;
            flex-direction: column;
            flex-wrap: wrap;
            overflow: hidden;
        }

        form {
            display: flex;
            flex-direction: column;
            gap: 50px;
        }

        .inputBox {
            position: relative;
            width: 500px;
        }

            .inputBox input {
                width: 100%;
                padding: 10px;
                border: 1px solid #1d2b3ab9;
                background: #b7c8d7;
                border-radius: 5px;
                outline: none;
                color: #1d2b3a;
                font-size: 1em;
                transition: 0.65s;
            }

            .inputBox span {
                position: absolute;
                left: 0;
                padding: 10px;
                pointer-events: none;
                font-size: 1em;
                color: #1d2b3ab9;
                transition: 0.65s;
            }

            .inputBox input:valid ~ span, .inputBox input:focus ~ span {
                color: #1d2b3a;
                transform: translateX(10px) translateY(-7px);
                font-size: 0.9em;
                padding: 0 10px;
                background: #b7c8d7;
                border-left: 1px solid #1d2b3a;
                border-right: 1px solid #1d2b3a;
                letter-spacing: 0.2em;
                text-transform: uppercase;
            }

            .inputBox input:valid, .inputBox input:focus {
                border: 1px solid #1d2b3a;
            }

            .inputBox:nth-child(5) input:valid ~ span, .inputBox:nth-child(5) input:focus ~ span {
                background: #1d2b3a;
                color: #b7c8d7;
                border-radius: 5px;
            }

            .inputBox:nth-child(3) input {
                text-transform: capitalize;
            }

        .dropdown {
            min-width: 15em;
            position: relative;
            margin: 2em;
            margin-left: 3px;
            margin-right: 3px;
            margin-top: 10px;
        }

            .dropdown * {
                box-sizing: border-box;
            }

        .select {
            background: #b7c8d7;
            color: #1d2b3a;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border: 2px #1d2b3ab9 solid;
            border-radius: 0.5em;
            padding: 1em;
            cursor: pointer;
            transition: background 0.3s;
        }

        .select-clicked {
            border: 2px #1d2b3a solid;
            box-shadow: 0 0 0.8em #000000;
        }

        .select-hover {
            background: #323741;
        }

        .caret {
            width: 0;
            height: 0;
            border-left: 5px solid transparent;
            border-right: 5px solid transparent;
            border-top: 6px solid #1d2b3ab9;
            transition: 0.3s;
        }

        .caret-rotate {
            transform: rotate(180deg);
        }

        .menu {
            list-style: none;
            padding: 0.2em 0.5em;
            background: #98b1c7;
            border: 1px #141f2bb9 solid;
            box-shadow: 0 0.5em 1em rgba(0, 0, 0, 0.2);
            border-radius: 0.5em;
            color: #1d2b3a;
            position: absolute;
            top: 3em;
            left: 50%;
            width: 100%;
            transform: translate(-50%);
            opacity: 0;
            display: none;
            transition: 0.2s;
            z-index: 1;
        }

            .menu li {
                padding: 0.7em 0.5em;
                margin: 0.3em 0;
                border-radius: 0.5em;
                cursor: pointer;
            }

                .menu li:hover {
                    background: #7298ba;
                }

        .active {
            background: #a9bed0;
        }

        .menu-open {
            display: block;
            opacity: 1;
        }

        .image-container {
            margin-top: -10px;
            text-align: center;
        }

        .imgModifier {
            transform: rotate(90deg);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return validateForm()">
        <div class="inputBox">
            <input type="text" required="required" id="NameTB" />
            <span>Name</span>
        </div>
        <div class="inputBox">
            <input type="text" required="required" id="UsernameTB" />
            <span>Username</span>
        </div>
        <div class="inputBox">
            <input type="password" required="required" id="PasswordTB" />
            <span>Password</span>
        </div>
        <asp:HiddenField ID="HiddenName" runat="server" />
        <asp:HiddenField ID="HiddenUsername" runat="server" />
        <asp:HiddenField ID="HiddenPassword" runat="server" />
        <asp:HiddenField ID="HiddenType" runat="server" />
        <div class="dropdown">
            <div class="select">
                <span class="selected">Select Type</span>
                <div class="caret"></div>
            </div>
            <ul class="menu">
                <li>Student</li>
                <li>Public</li>
            </ul>
        </div>
        <div class="image-container">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Circle-icons-arrow-up.svg/1024px-Circle-icons-arrow-up.svg.png"
                AlternateText="Go to Google" Width="100px" Height="100px" OnClick="ImageButton1_Click" CssClass="imgModifier" />
        </div>
    </form>
</body>
<script>
    const dropdowns = document.querySelectorAll('.dropdown');
    dropdowns.forEach(dropdown => {
        const select = dropdown.querySelector('.select');
        const caret = dropdown.querySelector('.caret');
        const menu = dropdown.querySelector('.menu');
        const options = dropdown.querySelectorAll('.menu li');
        const selected = dropdown.querySelector('.selected');

        select.addEventListener('click', () => {
            select.classList.toggle('select-clicked');
            caret.classList.toggle('caret-rotate');
            menu.classList.toggle('menu-open');
        });

        options.forEach(option => {
            option.addEventListener('click', () => {
                selected.innerText = option.innerText;
                select.classList.remove('select-clicked');
                caret.classList.remove('caret-rotate');
                menu.classList.remove('menu-open');
                options.forEach(option => {
                    option.classList.remove('active');
                });

                option.classList.add('active');

                document.getElementById("<%= HiddenType.ClientID %>").value = option.innerText;
            });
        });
    });

    function getImageClickData() {
        var nameTBValue = document.getElementById("NameTB").value;
        var usernameTBValue = document.getElementById("UsernameTB").value;
        var passwordTBValue = document.getElementById("PasswordTB").value;
        if (nameTBValue.trim() === '' || usernameTBValue.trim() === '' || passwordTBValue.trim() === '') {
            alert('Please fill in all fields.');
            return false;
        }
        document.getElementById("<%= HiddenName.ClientID %>").value = nameTBValue;
        document.getElementById("<%= HiddenUsername.ClientID %>").value = usernameTBValue;
        document.getElementById("<%= HiddenPassword.ClientID %>").value = passwordTBValue;
        return true;
    }

    // Function to validate the form before submission
    function validateForm() {
        // Call getImageClickData to ensure fields are filled
        if (!getImageClickData()) {
            return false; // Prevent form submission if fields are not filled
        }
        // Additional validation logic if needed
        return true; // Allow form submission if all validations pass
    }
</script>

</html>
