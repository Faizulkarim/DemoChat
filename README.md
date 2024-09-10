
## Screenshots
<img src="https://github.com/user-attachments/assets/254582c2-41e2-4b03-b8ee-5954abad2b19" width="200" />
<img src="https://github.com/user-attachments/assets/d9c0bb02-9d6e-4a36-bb63-8fa641891a71" width="200" />
<img src="https://github.com/user-attachments/assets/437f7a80-1640-4857-a76f-af0b4f50f09b" width="200" />
<img src="[https://github.com/user-attachments/assets/f203b611-bb8b-4a16-8b1e-e0bb70529596](https://github.com/user-attachments/assets/970a1b33-1bed-4813-b297-11b6426a07e9)" width="200" />

# Firestore Chat App 📱💬

This iOS chat application is built using Swift and Firebase Firestore. It features real-time messaging, automatic scrolling, and push notifications for new messages using Firebase Cloud Firestore and User Notifications. The app uses **Swift** and **Firestore** to manage chat data in real-time.

## Features ✨
- **Real-time Messaging**: Messages are updated in real-time using Firestore's `addSnapshotListener`.
- **Local Notifications**: Receives local notifications for new messages from other users.
- **Automatic Scrolling**: Automatically scrolls to the latest message.
- **Firestore Integration**: Messages are stored and retrieved from Firestore.
- **Avoids Notification on Own Messages**: No notifications are triggered for messages sent by the current user.

## Installation 📲

1. **Clone the repository:**

   ```bash
   git clone https://github.com/yourusername/firestore-chat-app.git
   cd firestore-chat-app
Install dependencies:
Make sure you have CocoaPods installed, then run:

bash
Copy code
pod install
Firebase Setup:
Go to Firebase Console.
Create a Firebase project and add an iOS app to your project.
Download the GoogleService-Info.plist file and add it to your Xcode project.
Run the app:
Open the .xcworkspace file and run the app in Xcode.

How it Works 🔧

Loading Messages:
The app uses Firestore’s addSnapshotListener to listen for new messages in real-time:

swift
Copy code
db.collection("chats").document(chatId).collection("messages")
   .order(by: "timestamp")
   .addSnapshotListener { querySnapshot, error in
       if let error = error {
           print("Error fetching messages: \(error)")
           return
       }
       // Process new messages
   }
   
Local Notifications:
When a new message arrives, the app sends a local notification for messages not sent by the current user:

swift
Copy code
if newMessage.senderId != Auth.auth().currentUser?.uid {
    sendLocalNotification(message: newMessage)
}
Automatic Scroll to Latest Message:
After each message update, the app automatically scrolls to the latest message:

swift
Copy code
let indexPath = IndexPath(row: messages.count - 1, section: 0)
tableView.scrollToRow(at: indexPath, at: .bottom, animated: true)
Screenshots 📸 
