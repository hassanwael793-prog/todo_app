# 📝 To-Do App

A clean, responsive, and localized Flutter task management application designed to organize daily productivity efficiently.

---

## ✨ Features

- **Profile Setup**: User profile customization with local avatar selection and user identity setup.
- **Multilingual Support**: Complete localization for **Arabic** and **English** with real-time switching using `easy_localization`.
- **Responsive Layout**: Screen scaling across varied mobile screen sizes via `flutter_screenutil`.
- **Modern UI / UX**: Clean aesthetic styling featuring smooth Lottie startup animations.
- **Stateful Form Validation**: Validation logic covering user input and persistent sessions.

---

## 📱 App Screenshots

| Splash Screen | Create Profile (AR) | Create Profile (EN) |
|:---:|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/2e35288a-98a6-4673-a909-b1b60cc657d2" width="230" /> | <img src="https://github.com/user-attachments/assets/aa05c3a9-68e2-4cc0-b95a-656cf746662b" width="230" /> | <img src="https://github.com/user-attachments/assets/653833ac-4fb7-4e3b-a780-5df9b605b208" width="230" /> |

<img width="1080" height="2424" alt="Screenshot_20261001_160821" src="https://github.com/user-attachments/assets/f6852390-94fc-46e2-8160-4cf1f03a01e8" />

<img width="1080" height="2424" alt="Screenshot_20261001_160836" src="https://github.com/user-attachments/assets/11b216ec-016d-4ac6-b813-19ff20b6c4e8" />



<img width="1080" height="2424" alt="Screenshot_20261001_160845" src="https://github.com/user-attachments/assets/f0a84831-8ed5-4cc2-a029-377131dcf942" />
---

## 📂 Project Structure

```text
todo_app/
├── assets/
│   ├── icon/
│   │   └── splash.json
│   └── translations/
│       ├── ar.json
│       └── en.json
├── lib/
│   ├── features/
│   │   ├── home/
│   │   │   └── home_screen.dart
│   │   ├── login/
│   │   │   ├── widgets/
│   │   │   │   ├── buttom.dart
│   │   │   │   ├── custom_text_field.dart
│   │   │   │   ├── language.dart
│   │   │   │   └── profile_icon.dart
│   │   │   └── login_screen.dart
│   │   └── splash/
│   │       └── splash_screen.dart
│   ├── gen/
│   │   └── locale_keys.g.dart
│   └── main.dart
├── pubspec.yaml
└── README.md
