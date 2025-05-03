# 📚 Bookly Flutter App

**Bookly** is a beautifully designed Flutter app for book discovery and reading previews. It allows users to search, explore, and preview books through a modern and intuitive interface. The app is built with **Clean Architecture**, utilizes **Cubit** for state management, and integrates with an external book API using **Dio**.

---

## 📜 Table of Contents

* [📚 About the App](#-about-the-app)
* [✅ Features](#-features)
* [🧱 Architecture](#-architecture)
* [🛠 Technologies Used](#-technologies-used)
* [📷 Screenshots](#-screenshots)
* [🚀 Getting Started](#-getting-started)
* [📱 Usage Guide](#-usage-guide)
* [🧪 Folder Structure](#-folder-structure)
* [🤝 Contributing](#-contributing)
* [📝 License](#-license)
* [📬 Contact](#-contact)

---

## 📚 About the App

Bookly Flutter App is a showcase for modern app development using Flutter with a clean architecture. It serves as a **starter template** for those building scalable, testable, and production-ready apps.

---

## ✅ Features

* 🚀 **Splash Screen** – Modern animated splash screen
* 🔍 **Search Books** – Search by title, author, or keyword
* 📖 **Preview Book** – View sample previews of books
* 📘 **Book Details** – See metadata, cover, author info, and preview
* 🏠 **Home Screen** – Organized book listings by category
* 👋 **Opening Screen** – Onboarding or branding screen
* 🎯 **Clean Architecture** – Layered separation for maintainability
* 🔀 **State Management with Cubit** – Fast and lightweight control
* 🌐 **API Integration** – Seamless integration with real book APIs via Dio

---

## 🧱 Architecture

The app uses **Clean Architecture**, ensuring your codebase remains modular, scalable, and testable.

### Structure:

```
lib/
🏋️
🔻 core/                   # Common utilities and constants
🔻 features/               # All feature-based modules
    🔻 book/               # Book module (search, details, etc.)
        🔻 data/           # Data layer (models, API, repositories)
        🔻 domain/         # Business logic (entities, use cases)
        🔻 presentation/   # UI (widgets, screens, cubits)
🔻 main.dart               # App entry point
```

---

## 🛠 Technologies Used

| Technology     | Description                           |
| -------------- | ------------------------------------- |
| **Flutter**    | UI framework for building mobile apps |
| **Dart**       | Programming language used in Flutter  |
| **Cubit**      | Lightweight BLoC for state management |
| **Dio**        | HTTP client for API requests          |
| **Clean Arch** | Scalable and modular app architecture |

---

## 📷 Screenshots

|             Splash Screen             |             Search Screen             |             Preview Book             |
| :-----------------------------------: | :-----------------------------------: | :----------------------------------: |
| ![](Project_Images/splash_screen.png) | ![](Project_Images/search_screen.png) | ![](Project_Images/preview_book.png) |

|             Opening Screen             |             Home Screen             |             Book Details             |
| :------------------------------------: | :---------------------------------: | :----------------------------------: |
| ![](Project_Images/opening_screen.png) | ![](Project_Images/home_screen.png) | ![](Project_Images/book_details.png) |

> Make sure your images are named using lowercase and underscores (`example_screen.png`) and placed in `Project_Images/` in the root directory.

---

## 🚀 Getting Started

Follow these steps to run the app locally:

### 1. Clone the Repository

```bash
git clone https://github.com/kirlousHelal/Bookly_Flutter_App.git
cd Bookly_Flutter_App
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Run the App

```bash
flutter run
```

> Ensure you have Flutter SDK installed. You can check with `flutter doctor`.

---

## 📱 Usage Guide

* Launch the app: You’ll land on the **Splash Screen**
* After the **Opening Screen**, you’ll be directed to the **Home Screen**
* Use the **Search** tab to find books
* Tap on any book to view its **Details**
* Tap **Preview** to open the book sample in the browser

---

## 🧪 Folder Structure

This is a simplified overview of the structure:

```
📁 lib/
│
📁 core/
│   📁 utils/          # Shared utilities
│   📁 errors/         # Failure classes and exceptions
│   📁 widgets/        # Reusable custom widgets
│
📁 features/
│   📁 books/
│       📁 data/       # Models, API service, DTOs
│       📁 domain/     # UseCases, Entities, Repositories
│       📁 presentation/
│           📁 cubits/ # State management
│           📁 views/  # Screens and UI logic
│
📄 main.dart           # Entry point of the app
```

---

## 🤝 Contributing

Contributions are welcome! To contribute:

1. Fork the repo
2. Create your feature branch: `git checkout -b feature/my-feature`
3. Commit your changes: `git commit -m 'Add my feature'`
4. Push to the branch: `git push origin feature/my-feature`
5. Open a pull request

Please follow [Conventional Commits](https://www.conventionalcommits.org/) and include test coverage when possible.

---

## 📝 License

This project is licensed under the MIT License.
See the [LICENSE](LICENSE) file for full details.

---

## 📬 Contact

**Developer**: [Kirlous Helal](https://github.com/kirlousHelal)
📧 Email: [kirlous.helal2@gmail.com](mailto:kirlous.helal2@gmail.com)
💼 LinkedIn: [linkedin.com/in/kirlous-helal](https://www.linkedin.com/in/kirlous-helal)

---

> Give this repository a ⭐ if you found it helpful or inspiring!
