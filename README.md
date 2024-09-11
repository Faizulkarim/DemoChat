
# Firestore Chat App 📱💬

This iOS chat application is built using Swift and Firebase Firestore. It features real-time messaging, automatic scrolling, and push notifications for new messages using Firebase Cloud Firestore and User Notifications. The app uses **Swift** and **Firestore** to manage chat data in real-time.

## Features ✨
- **Real-time Messaging**: Messages are updated in real-time using Firestore's `addSnapshotListener`.
- **Firestore Integration**: Messages are stored and retrieved from Firestore.


## Screenshots
<img src="https://github.com/user-attachments/assets/254582c2-41e2-4b03-b8ee-5954abad2b19" width="200" />
<img src="https://github.com/user-attachments/assets/d9c0bb02-9d6e-4a36-bb63-8fa641891a71" width="200" />
<img src="https://github.com/user-attachments/assets/437f7a80-1640-4857-a76f-af0b4f50f09b" width="200" />
<img src="https://github.com/user-attachments/assets/970a1b33-1bed-4813-b297-11b6426a07e9" width="200" />


## Videos
https://github.com/user-attachments/assets/352b1750-21a9-4c9f-9526-5a4b284343fb


## Installation 📲

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/firestore-chat-app.git
   cd firestore-chat-app
   
2. **Install dependencies:**
Make sure you have CocoaPods installed, then run:

   ```bash
   pod install

3. **Firebase Setup:**
4. 
Go to Firebase Console.
Create a Firebase project and add an iOS app to your project.
Download the GoogleService-Info.plist file and add it to your Xcode project.
5. **Run the app:**
Open the .xcworkspace file and run the app in Xcode.

How it Works 🔧

Loading Messages:
The app uses Firestore’s addSnapshotListener to listen for new messages in real-time:

   ```swift
db.collection("chats").document(chatId).collection("messages")
   .order(by: "timestamp")
   .addSnapshotListener { querySnapshot, error in
       if let error = error {
           print("Error fetching messages: \(error)")
           return
       }
       // Process new messages
   }

### Architecture
[Read further in ARCHITECTURE.md](ARCHITECTURE.md)


