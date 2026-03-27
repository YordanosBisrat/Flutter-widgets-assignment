# Flutter Widget Exercises

A Flutter project exploring common widgets through four hands-on lab assignments. Each lab focuses on a specific set of widgets and layout concepts, culminating in a navigable multi-lab app.

---

## App Overview

The app launches with a central menu screen (`MenuScreen`) that lists all four labs. Each lab is accessible via `Navigator.push`, giving students a clean entry point for each exercise.

### Menu Screen

| Widget Tree | Screenshot |
|:-----------:|:----------:|
| ![Menu Widget Tree](assets/images/menuscreen.jpg) | ![Menu Screenshot](assets/images/menu_screenshot.jpg) |

**Key widgets used:** `Scaffold`, `AppBar`, `ListView`, `Container`, `ListTile`, `Icon`, `Navigator`

---

## Lab 1: Profile Card

**Topic:** Basic Layout & Card Widget

### Description

Builds a centered profile card using `Column`, `CircleAvatar`, `Text`, and `IconButton` widgets. The card is styled with a `BoxShadow` and `BorderRadius` to give it a clean card appearance. Social action buttons (mail, phone, share) are arranged in a `Row` at the bottom of the card.

### Widgets Practiced
- `Scaffold` / `AppBar`
- `Center` / `Container`
- `Column`
- `CircleAvatar`
- `Text` (styled with `FontWeight` and `fontSize`)
- `SizedBox` (spacing)
- `Row` / `IconButton` / `Icon`

### Widget Tree & Screenshot

| Widget Tree | Screenshot |
|:-----------:|:----------:|
| ![Profile Widget Tree](assets/images/profile_widget.jpg) | ![Profile Screenshot](assets/images/profile_screenshot.jpg) |

---

## Lab 2: Navigation

**Topic:** Bottom Navigation & Navigation Transitions

### Description

Demonstrates Flutter navigation using a `BottomNavigationBar` with three tabs (Home, Favorites, Profile). The Home tab includes an `ElevatedButton` that pushes a `DetailsScreen` onto the navigation stack, demonstrating `Navigator.push` with `MaterialPageRoute` and passing data between screens via constructor parameters.

### Widgets Practiced
- `Scaffold` / `AppBar` / `BottomNavigationBar`
- `StatefulWidget` with `setState`
- `Navigator.push` / `MaterialPageRoute`
- `ElevatedButton`
- `BottomNavigationBarItem`

### Widget Tree & Screenshot

| Widget Tree | Screenshot |
|:-----------:|:----------:|
| ![Navigation Widget Tree](assets/images/navigation_widget.jpg) | ![Navigation Screenshot](assets/images/navigation_screenshot.jpg) |

**Home Screen (with navigation button):**

![Home Screen Screenshot](assets/images/home_screen_screenshot.jpg)

--- 

## Lab 3: Product Catalog

**Topic:** ListView & GridView Builders

### Description

Displays a scrollable product grid using `GridView.builder`. Each product card (`Card`) contains an `Image` that fills the top portion and a `Container` at the bottom showing the product name and price. Cards respond to taps via `GestureDetector`. Product data (name, price, image URL) is stored as a list and rendered dynamically.

### Widgets Practiced
- `Scaffold` / `AppBar`
- `GridView.builder` with `SliverGridDelegateWithFixedCrossAxisCount`
- `GestureDetector`
- `Card`
- `Column` / `Expanded`
- `Image` (network images)
- `Container` with styled `Text`

### Widget Tree & Screenshot

| Widget Tree | Screenshot |
|:-----------:|:----------:|
| ![Catalog Widget Tree](assets/images/catalog_widget.jpg) | *(see catalog screen)* |

---

## Lab 4: User Registration

**Topic:** Forms, Validation & Inputs

### Description

Implements a registration form using Flutter's `Form` widget with a `GlobalKey<FormState>`. The form contains four `TextFormField` inputs (Full Name, Email, Password, Confirm Password), each with a prefix icon and validator. An `ElevatedButton` triggers form validation on press. The form is wrapped in a `ListView` to handle overflow on smaller screens.

### Widgets Practiced
- `Form` / `GlobalKey<FormState>`
- `TextFormField` with `validator` and `InputDecoration`
- `ListView` (as form container)
- `Padding`
- `Center` / `SizedBox`
- `ElevatedButton`

### Widget Tree & Screenshot

| Widget Tree | Screenshot |
|:-----------:|:----------:|
| ![Registration Widget Tree](assets/images/registration_widget.jpg) | ![Registration Screenshot](assets/images/regitstration_screenshot.jpg) |

---

## Project Structure

```
lib/
├── main.dart                        # App entry point & MenuScreen
├── profile_card_lab/
│   └── profile_card_lab.dart        # Lab 1: Profile Card
├── navigation_lab/
│   └── navigation_lab.dart          # Lab 2: Navigation
├── catalog_lab/
│   └── catalog_lab.dart             # Lab 3: Product Catalog
└── registration_lab/
    └── registration_lab.dart        # Lab 4: User Registration

assets/
└── images/
    ├── profile.png                  # Avatar image used in Lab 1
    ├── profile_widget.jpg           # Lab 1 widget tree
    ├── profile_screenshot.jpg       # Lab 1 screenshot
    ├── navigation_widget.jpg        # Lab 2 widget tree
    ├── navigation_screenshot.jpg    # Lab 2 screenshot
    ├── home_screen_screenshot.jpg   # Lab 2 home tab screenshot
    ├── catalog_widget.jpg           # Lab 3 widget tree
    ├── menuscreen.jpg               # Menu widget tree
    ├── menu_screenshot.jpg          # Menu screenshot
    ├── registration_widget.jpg      # Lab 4 widget tree
    └── regitstration_screenshot.jpg # Lab 4 screenshot
```

## Getting Started

```bash
flutter pub get
flutter run
```

Requires Flutter SDK 3.x or later. For more information on Flutter development, see the [Flutter documentation](https://docs.flutter.dev/).
