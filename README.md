# 📦 My Storekeeper - Flutter Inventory Management App

A beautiful, modern Flutter application for managing product inventory locally using SQLite. Features full CRUD operations, image capture/upload, and a clean dark-themed UI.

![Flutter](https://img.shields.io/badge/Flutter-3.5.4-02569B?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.5.4-0175C2?logo=dart)
![SQLite](https://img.shields.io/badge/SQLite-sqflite-003B57?logo=sqlite)
![License](https://img.shields.io/badge/License-MIT-green)

## ✨ Features

### Core Functionality
- ✅ **Full CRUD Operations** - Create, Read, Update, and Delete products
- 💾 **Local SQLite Database** - Persistent storage using `sqflite`
- 📸 **Image Capture & Upload** - Take photos or select from gallery using `image_picker`
- 🔄 **State Management** - Reactive UI with Provider pattern
- ✔️ **Form Validation** - Input validation for all fields
- 🎨 **Modern UI** - Clean, minimal dark theme with Material 3
- 📱 **Responsive Design** - Works on all screen sizes
- 🔄 **Pull to Refresh** - Swipe down to reload products

### Product Properties
Each product includes:
- **Name** (String) - Product title with validation
- **Quantity** (Integer) - Stock count
- **Price** (Double) - Product price with currency formatting
- **Image** (Optional) - Product photo from camera or gallery

## 🏗️ Architecture & Tech Stack

### Dependencies
```yaml
dependencies:
  flutter: sdk: flutter
  provider: ^6.1.1          # State management
  sqflite: ^2.3.0           # SQLite database
  path_provider: ^2.1.1     # File system paths
  path: ^1.8.3              # Path manipulation
  image_picker: ^1.0.4      # Camera & gallery
  intl: ^0.18.1             # Currency formatting
```

### Project Structure
```
lib/
├── models/
│   └── product.dart              # Product data model
├── database/
│   └── database_helper.dart      # SQLite operations
├── providers/
│   └── product_provider.dart     # State management
├── screens/
│   ├── home_screen.dart          # Product list view
│   └── add_edit_product_screen.dart  # Add/Edit form
└── main.dart                     # App entry point
```

### Design Pattern
- **Provider Pattern** for state management
- **Singleton Pattern** for database instance
- **Repository Pattern** for data access
- **Clean Architecture** principles

## 🚀 Setup & Installation

### Prerequisites
- Flutter SDK (3.5.4 or higher)
- Dart SDK (3.5.4 or higher)
- Android Studio / VS Code
- Android SDK / Xcode (for iOS)

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/kikidoesflutter/mystorekeeper
   cd mystorekeeper
   ```

## 📱 Usage Guide

### Adding a Product
1. Tap the **"+ Add Product"** floating action button
2. Tap the image area to select a photo (camera or gallery)
3. Enter product name (minimum 2 characters)
4. Enter quantity (positive integer)
5. Enter price (positive number with up to 2 decimals)
6. Tap **"Add Product"** to save

### Editing a Product
1. Tap on any product card in the list
2. Modify the fields as needed
3. Tap **"Update Product"** to save changes

### Deleting a Product
1. Tap the delete icon (🗑️) on any product card
2. Confirm deletion in the dialog

### Refreshing the List
- Pull down on the product list to refresh

## 🎨 UI/UX Features

### Color Scheme
- **Background**: `#1A1A2E` (Dark navy)
- **Cards**: `#16213E` (Lighter navy)
- **Accent**: `#0F3460` (Blue)
- **Success**: `#4ECCA3` (Mint green)

### User Experience
- **Empty State** - Friendly message when no products exist
- **Loading States** - Progress indicators during operations
- **Error Handling** - User-friendly error messages
- **Success Feedback** - Snackbar notifications
- **Smooth Animations** - Material transitions

## 🗄️ Database Schema

### Products Table
```sql
CREATE TABLE products (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  quantity INTEGER NOT NULL,
  price REAL NOT NULL,
  imagePath TEXT
);
```

## 📝 Code Quality

- ✅ Null safety enabled
- ✅ Proper error handling
- ✅ Input validation
- ✅ Async/await patterns
- ✅ Clean code principles
- ✅ Commented code

## 🐛 Known Issues & Limitations

- Images are stored as file paths (not in database)
- No search/filter functionality yet
- No data export feature
- No multi-user support

## 🚀 Future Enhancements

- [ ] Search and filter products
- [ ] Categories/tags
- [ ] Barcode scanning
- [ ] Data export (CSV/PDF)
- [ ] Cloud backup
- [ ] Multi-language support
- [ ] Dark/Light theme toggle
- [ ] Product analytics

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Author
- GitHub: https://github.com/kikidoesflutter
- Email: oyekolaokikiolami@gmail.com

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design for UI guidelines
- Community packages: provider, sqflite, image_picker

---

**Made with ❤️ using Flutter**

Release apk: https://github.com/kikidoesflutter/mystorekeeper/releases/download/Store/app-release.apk
App link: https://appetize.io/app/b_3daxgvxlswndtqjkkdub5l26ve
Demo video: https://drive.google.com/file/d/1SmrRgTxpSQ7PIobwzilmrLl38UhUG1JN/view?usp=drivesdk