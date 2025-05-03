# 📚 Bookly Flutter App

The **Bookly Flutter App** is a modern book discovery application built with Flutter. Users can search for books, view detailed information, and explore categorized collections. The app is built following best practices, with a focus on clean architecture, performance, and scalability.

---

## 📋 Table of Contents

- [Features](#-features)
- [Architecture](#-architecture)
- [Technologies Used](#-technologies-used)
- [Screenshots](#-screenshots)
- [Installation](#-installation)
- [Usage](#-usage)
- [Contributing](#-contributing)
- [License](#-license)

---

## ✅ Features

- **Splash Screen** – Beautiful launch screen shown when the app starts.
- **Search Screen** – Search books by title, author, or keyword.
- **Preview Book** – View a quick summary before diving deeper.
- **Opening Screen** – Introductory screen with branding or instructions.
- **Home Screen** – List view of books, organized by category.
- **Details for Search Book** – Detailed info for selected search result.
- **Book Details** – In-depth view with all book metadata and preview link.

---

## 🧱 Architecture

The app follows **Clean Architecture** to separate concerns and ensure testability and maintainability.

- **Data Layer**: Handles API calls and external data access using `Dio`.
- **Domain Layer**: Contains business logic and use cases.
- **Presentation Layer**: UI built with Flutter widgets and managed with **Cubit** for state management.

---

## 🛠 Technologies Used

- **Flutter** – Cross-platform UI framework.
- **Dart** – Primary programming language.
- **Cubit (Bloc)** – State management solution.
- **Dio** – HTTP client for RESTful API integration.
- **Clean Architecture** – Layered code structure.

---

## 📷 Screenshots

| <div style="text-align: center;">
    <img src="Project_Images/Splash Screen.png" width="300"/>
    <p style="margin-top: 10px;"><strong>Splash Screen</strong></p>
</div> | <div style="text-align: center;">
    <img src="Project_Images/Search Screen.png" width="300"/>
    <p style="margin-top: 10px;"><strong>Search Screen</strong></p>
</div> | <div style="text-align: center;">
    <img src="Project_Images/Preview Book.png" width="300"/>
    <p style="margin-top: 10px;"><strong>Preview Book</strong></p>
</div> |
| --- | --- | --- |
| <div style="text-align: center;">
    <img src="Project_Images/Opening Screen.png" width="300"/>
    <p style="margin-top: 10px;"><strong>Opening Screen</strong></p>
</div> | <div style="text-align: center;">
    <img src="Project_Images/Home.png" width="300"/>
    <p style="margin-top: 10px;"><strong>Home Screen</strong></p>
</div> |
 <div style="text-align: center;">
    <img src="Project_Images/Book Details.png" width="300"/>
    <p style="margin-top: 10px;"><strong>Book Details Screen</strong></p>
</div> | |

---

## 🚀 Installation

```bash
# 1. Clone the repository
git clone https://github.com/kirlousHelal/Bookly_Flutter_App.git

# 2. Navigate into the project directory
cd Bookly_Flutter_App

# 3. Install dependencies
flutter pub get

# 4. Run the app
flutter run
