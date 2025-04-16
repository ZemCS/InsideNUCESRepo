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

- **Backend**: ASP.NET, C#
- **Frontend**: HTML, CSS, JavaScript
- **Database**: SQL Server
- **Authentication**: Secure user authentication for all roles
- **Deployment**: Configurable for local or cloud-based hosting

## Prerequisites

To run this project locally, ensure you have the following installed:

- [.NET Framework](https://dotnet.microsoft.com/download) (version compatible with the project, e.g., .NET 6.0 or later)
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
   - Run the SQL script located in `Database/Schema.sql` to create the database and tables.
   - Update the connection string in `Web.config` or `appsettings.json` with your SQL Server credentials:
     ```json
     "ConnectionStrings": {
       "DefaultConnection": "Server=your_server_name;Database=InsideNUCES;Trusted_Connection=True;"
     }
     ```

3. **Restore NuGet Packages**:
   - Open the solution in Visual Studio.
   - Right-click the solution in Solution Explorer and select **Restore NuGet Packages**.

4. **Build and Run**:
   - Set the startup project (e.g., the ASP.NET web project).
   - Press `F5` or click **Run** in Visual Studio to build and launch the application.
   - The application should open in your default browser at `http://localhost:<port>`.

## Configuration

- **Authentication**: Configure user roles and credentials in the database. Default admin credentials can be set up in the `Users` table.
- **Database**: Ensure the SQL Server instance is running and accessible.
- **Environment**: Update `Web.config` or `appsettings.json` for environment-specific settings (e.g., production vs. development).

## Usage

1. **Sign In**:
   - Navigate to the login page.
   - Use credentials based on your role (Student, Teacher, or Admin).

2. **Student/Teacher Actions**:
   - View your profile and public data about courses and teachers.
   - Update personal information (if permitted).

3. **Admin Actions**:
   - Access the admin dashboard to manage records.
   - Add, edit, or delete Students, Teachers, and Courses via the provided interface.

## Project Structure

```
InsideNUCES/
├── Controllers/           # ASP.NET MVC controllers
├── Models/                # C# models for database entities
├── Views/                 # Razor views for UI
├── wwwroot/               # Static files (CSS, JavaScript, images)
├── Database/              # SQL scripts for schema and seed data
├── Web.config             # Configuration file (or appsettings.json)
└── README.md              # This file
```

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

For questions or support, please contact [your-email@example.com](mailto:your-email@example.com) or open an issue on GitHub.

---

Built with ❤️ for FAST - NUCES
