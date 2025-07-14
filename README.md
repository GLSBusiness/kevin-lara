# Flutter Frontend Test

A Flutter application demonstrating clean architecture principles, implementing the Repository pattern, and showcasing modern Flutter development practices.

## 📋 Table of Contents

- [Overview](#-overview)
- [Architecture](#️-architecture)
- [Tech Stack](#️-tech-stack)
- [Project Structure](#-project-structure)
- [Installation](#️-installation)
- [Usage](#-usage)

## 🎯 Overview

This project is a technical demonstration showcasing a Flutter application built with clean architecture principles. The application implements the Repository pattern to separate business logic from data sources, ensuring maintainable and testable code.


## 🏗️ Architecture

This project follows **Clean Architecture** principles with the following layers:

```
lib/
├── presentation/     # UI Layer (Widgets, Screens, Providers)
├── repositories/     # Repository Layer (Abstractions & Implementations)
├── data/            # Data Layer (Models, Services)
└── config/          # Configuration (Theme, Router, Constants)
```

## 🛠️ Tech Stack

### Core Dependencies
- **Flutter**: ^3.3.4 - UI framework
- **Dart**: ^3.3.4 - Programming language

### State Management
- **flutter_riverpod**: ^2.6.1 - Reactive state management

### Navigation
- **go_router**: ^13.2.4 - Declarative routing

### Network & HTTP
- **dio**: ^5.8.0+1 - HTTP client for API calls

### Configuration
- **flutter_dotenv**: ^5.2.1 - Environment variables management

## 📁 Project Structure

```
lib/
├── config/
│   ├── constants/          # Application constants
│   ├── helpers/           # Utility functions
│   ├── router/            # Navigation configuration
│   └── theme/             # App theming
├── data/
│   ├── models/            # Data models
│   └── services/          # API services
├── presentation/
│   ├── providers/         # Riverpod providers
│   ├── screens/           # UI screens
│   └── widgets/           # Reusable widgets
└── repositories/
    ├── interfaces/        # Repository contracts
    └── implementations/   # Repository implementations
```

## ⬇️ Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/GLSBusiness/kevin-lara.git
   cd prueba_frontend
   ```

2. **Install dependencies**:
   ```bash
   flutter pub get
   ```

3. **Create environment file**:
   ```bash
   # Create .env file in the root directory
   cp .env.example .env
   ```

4. **Configure environment variables**:
   ```env
   # .env
   API_BASE_URL=https://api.example.com
   API_KEY=your_api_key_here
   ```

## 📱 Usage

### Running the Application

```bash
# Run in debug mode
flutter run
```
