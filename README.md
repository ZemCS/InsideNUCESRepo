# InsideNUCES

InsideNUCES is a database management system designed for FAST - National University of Computer and Emerging Sciences (NUCES). It provides a user-friendly platform for Students, Teachers, and Admins to interact with university-related data, including teacher profiles, course details, and personal information. The system is built using **ASP.NET**, **C#**, **CSS**, **JavaScript**, and **SQL Server**.

## Features

- **Student Portal**:
  - View personal information.
  - Access public information about teachers and courses.
  - Secure sign-in for authenticated access.

- **Teacher Portal**:
  - View personal information.
  - Access public course and teacher details.
  - Secure sign-in for authenticated access.

- **Admin Portal**:
  - Full control over the database.
  - Add, update, or delete records for Students, Teachers, and Courses.
  - Secure sign-in with elevated privileges.

## Tech Stack

- **Backend**: ASP.NET Web Forms, C#
- **Frontend**: HTML, CSS, JavaScript
- **Database**: SQL Server
- **Authentication**: Secure user authentication for all roles
- **Deployment**: Configurable for local or cloud-based hosting

## Prerequisites

To run this project locally, ensure you have the following installed:

- [.NET Framework](https://dotnet.microsoft.com/download) (version compatible with the project, e.g., .NET Framework 4.x)
- [SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) (Express or Developer Edition)
- [Visual Studio](https://visualstudio.microsoft.com/) (2022 or later recommended) with ASP.NET and web development workload
- [SQL Server Management Studio (SSMS)](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms) (optional, for database management)

## Installation

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/InsideNUCES.git
   cd InsideNUCES
   ```

2. **Set Up the Database**:
   - Open SQL Server Management Studio (SSMS) or your preferred SQL client.
   - Run the SQL script (e.g., located in a `Database/` folder or create one based on the schema) to create the database and tables.
   - Update the connection string in `Web.config` with your SQL Server credentials:
     ```xml
     <connectionStrings>
       <add name="DefaultConnection" connectionString="Server=your_server_name;Database=InsideNUCES;Trusted_Connection=True;" providerName="System.Data.SqlClient" />
     </connectionStrings>
     ```

3. **Restore NuGet Packages**:
   - Open the solution in Visual Studio.
   - Ensure `packages.config` is present, then right-click the solution in Solution Explorer and select **Restore NuGet Packages**.

4. **Build and Run**:
   - Open `InsideNUCES.csproj` in Visual Studio.
   - Set the startup project to the web application.
   - Press `F5` or click **Run** to build and launch the application.
   - The application should open in your default browser at `http://localhost:<port>`.

## Configuration

- **Authentication**: Configure user roles and credentials in the database. Default admin credentials can be set up in the `Users` table.
- **Database**: Ensure the SQL Server instance is running and accessible.
- **Environment**: Use `Web.Debug.config` or `Web.Release.config` for environment-specific settings (e.g., debugging vs. production).

## Usage

1. **Sign In**:
   - Navigate to `InsideNUCES-Login.aspx`.
   - Use credentials based on your role (Student, Teacher, or Admin).

2. **Student/Teacher Actions**:
   - Access `InsideNUCES-StudentHome.aspx` or similar pages to view profiles and public data.
   - Use `InsideNUCES-Courses.aspx` or `InsideNUCES-Teachers.aspx` to view course and teacher information.

3. **Admin Actions**:
   - Access `InsideNUCES-AdminHome.aspx` to manage records.
   - Add, edit, or delete Students, Teachers, and Courses via the provided interface.

## Project Structure

The repository contains the following key files and directories:

```
InsideNUCES/
├── InsideNUCES-AdminHome.aspx          # Admin dashboard page
├── InsideNUCES-AdminHome.aspx.cs       # Code-behind for admin dashboard
├── InsideNUCES-AdminHome.aspx.designer.cs  # Designer file for admin dashboard
├── InsideNUCES-CourseInfo.aspx         # Course details page
├── InsideNUCES-CourseInfo.aspx.cs      # Code-behind for course details
├── InsideNUCES-CourseInfo.aspx.designer.cs  # Designer file for course details
├── InsideNUCES-Courses.aspx            # Courses list page
├── InsideNUCES-Courses.aspx.cs         # Code-behind for courses list
├── InsideNUCES-Courses.aspx.designer.cs  # Designer file for courses list
├── InsideNUCES-Login.aspx              # Login page
├── InsideNUCES-Login.aspx.cs           # Code-behind for login
├── InsideNUCES-Login.aspx.designer.cs  # Designer file for login
├── InsideNUCES-PublicHome.aspx         # Public homepage
├── InsideNUCES-PublicHome.aspx.cs      # Code-behind for public homepage
├── InsideNUCES-PublicHome.aspx.designer.cs  # Designer file for public homepage
├── InsideNUCES-SignUp.aspx             # Sign-up page
├── InsideNUCES-SignUp.aspx.cs          # Code-behind for sign-up
├── InsideNUCES-SignUp.aspx.designer.cs  # Designer file for sign-up
├── InsideNUCES-StudentHome.aspx        # Student dashboard page
├── InsideNUCES-StudentHome.aspx.cs     # Code-behind for student dashboard
├── InsideNUCES-StudentHome.aspx.designer.cs  # Designer file for student dashboard
├── InsideNUCES-TeacherInfo.aspx        # Teacher details page
├── InsideNUCES-TeacherInfo.aspx.cs     # Code-behind for teacher details
├── InsideNUCES-TeacherInfo.aspx.designer.cs  # Designer file for teacher details
├── InsideNUCES-Teachers.aspx           # Teachers list page
├── InsideNUCES-Teachers.aspx.cs        # Code-behind for teachers list
├── InsideNUCES-Teachers.aspx.designer.cs  # Designer file for teachers list
├── InsideNUCES.csproj                  # Project file
├── Web.config                          # Main configuration file
├── Web.Debug.config                    # Debug configuration
├── Web.Release.config                  # Release configuration
├── packages.config                     # NuGet package dependencies
└── wwwroot/                            # Static files (CSS, JavaScript, images, if applicable)
```

**Note**: The `Database/` folder for SQL scripts is assumed; add it if necessary to include schema and seed data.

## Contributing

Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m "Add your feature"`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a Pull Request.

Please ensure your code follows the project's coding standards and includes appropriate tests.

## License

This project is licensed under the [MIT License](LICENSE). See the `LICENSE` file for details.

## Contact

For questions or support, please contact [znaeem164@gmail.com](mailto:znaeem164@gmail.com) or open an issue on GitHub.

---
