# 🏠 In-House – Real Estate Web Portal

A modern **real estate web application** built using **HTML, CSS, JavaScript, Bootstrap, and .NET C#** for efficient property listing and booking.  
The platform allows users to explore villas, apartments, and houses with image galleries, while providing **role-based access** for property management.

---

## 🌟 Features

- **🏘 Property Listings** – Browse villas, apartments, and houses with detailed descriptions and images.
- **🖼 Image Galleries** – View property images in a clean, responsive gallery layout.
- **📅 Booking System** – Reserve properties directly from the website.
- **📨 Contact & Feedback Forms** – Connect with property owners and leave feedback.
- **⭐ Reviews & FAQs** – Get answers and share property experiences.
- **🔑 Role-Based Access** – Admins manage properties; users can view and book.
- **📱 Fully Responsive** – Optimized for desktop, tablet, and mobile.

---

## 🛠 Technologies Used

| Category       | Technologies |
|----------------|--------------|
| Frontend       | HTML, CSS, JavaScript, Bootstrap |
| Backend        | ASP.NET Web Forms (C#) |
| Database       | SQL Server |
| Tools          | Visual Studio 2022 |
| Version Control| Git, GitHub |



## 📂 Project Structure

InHouse/
<br>
│
<br>
├── App_Code/ # Backend utility and database connection classes
<br>
├── App_Data/ # Database files
<br>
├── Assets/ # Images, icons, CSS, JS
<br>
├── Pages/ # ASPX pages (Property listings, booking, contact, etc.)
<br>
├── web.config # Application configuration
<br>
└── README.md # Project documentation

---

## 🚀 Getting Started

Follow these steps to run the project locally:

### 1️⃣ Clone the Repository

git clone https://github.com/your-username/inhouse-realestate.git


### 2️⃣ Open in Visual Studio

Open InHouse.sln in Visual Studio 2022.

### 3️⃣ Configure the Database

Attach the provided SQL Server database file from App_Data to your SQL Server.
<br>
Update the connection string in web.config:
<br>

<connectionStrings>
  <add name="InHouseDB"
       connectionString="Data Source=YOUR_SERVER_NAME;Initial Catalog=InHouseDB;Integrated Security=True"
       providerName="System.Data.SqlClient" />
</connectionStrings>


### 4️⃣ Run the Application

Press F5 in Visual Studio or run without debugging.
<br>
The site will open in your default browser.


👥 User Roles
<br>
**Admin**
Add, edit, and delete property listings.
<br>
Manage bookings, reviews, and feedback.
<br>
Update FAQs.
<br>
**User**
View and book properties.
<br>
Submit reviews and feedback.
<br>
Access FAQs and contact forms.
<br>


**📜 License**
This project is licensed for educational and personal use only.
For commercial use, please contact the author.


**🤝 Contributing**
Fork the repository.
<br>
Create a new branch:
<br>
git checkout -b feature/YourFeature
Commit your changes:
<br>
git commit -m "Add YourFeature"
Push the branch:
<br>
git push origin feature/YourFeature
Open a Pull Request.


💡 **Author** Jainam Saraiya
<br>
📧 **Email**: jainamsaraiya9.com
<br>
💼 **LinkedIn**: [https://www.linkedin.com/in/jainam-bharvad/]

