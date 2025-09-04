# NepalConnect

A real-time Flutter chat application for users in Nepal.

## Features

- User authentication (email/password)
- One-on-one messaging
- Group messaging
- Real-time message delivery
- Typing indicators
- Online/offline status
- Push notifications
- Beautiful UI with Material 3 design

## Tech Stack

- **Frontend**: Flutter
- **Backend**: Supabase (BaaS)
- **Database**: PostgreSQL (via Supabase)
- **Real-time**: Supabase Realtime
- **Authentication**: Supabase Auth
- **Storage**: Supabase Storage
- **Push Notifications**: Firebase Cloud Messaging (via Supabase Edge Functions)
- **State Management**: Riverpod
- **UI Toolkit**: flutter_chat_ui, Material 3

## Setup Instructions

1. Clone the repository
2. Run `flutter pub get`
3. Create a Supabase project and configure it according to the schema in the documentation
4. Add your Supabase credentials to the environment
5. Run `flutter run`

## Project Structure

```
lib/
├── core/
│   ├── constants/
│   ├── providers/
│   ├── routes/
│   ├── services/
│   ├── theme/
│   └── utils/
├── features/
│   ├── auth/
│   ├── chat/
│   ├── notifications/
│   └── profile/
├── models/
└── main.dart
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a pull request