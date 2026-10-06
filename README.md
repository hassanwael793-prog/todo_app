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

| Splash Screen | Profile Setup (AR) | Profile Setup (EN) | Main Screen |
|:---:|:---:|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/2e35288a-98a6-4673-a909-b1b60cc657d2" width="200" /> | <img src="https://github.com/user-attachments/assets/aa05c3a9-68e2-4cc0-b95a-656cf746662b" width="200" /> | <img src="https://github.com/user-attachments/assets/653833ac-4fb7-4e3b-a780-5df9b605b208" width="200" /> | <img src="https://github.com/user-attachments/assets/f6852390-94fc-46e2-8160-4cf1f03a01e8" width="200" /> |

*(Additional App Views)*

| Task View 1 | Task View 2 |
|:---:|:---:|
| <img src="https://github.com/user-attachments/assets/11b216ec-016d-4ac6-b813-19ff20b6c4e8" width="220" /> | <img src="https://github.com/user-attachments/assets/f0a84831-8ed5-4cc2-a029-377131dcf942" width="220" /> |
<img width="1280" height="2856" alt="Screenshot_20261006_200643" src="https://github.com/user-attachments/assets/8efe3d17-2f68-4964-a6fd-6730508f7b44" />

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
