# Dinajpur Tourism App

## **1. Introduction**

### **1.1 Purpose**
The purpose of this document is to provide a detailed description of the **Dinajpur Tourism App**. The app aims to provide users with information about tourist destinations in Dinajpur, Bangladesh. It allows users to explore various places, get detailed descriptions, and access multimedia content about each destination. Additionally, the app incorporates **Supabase** for authentication, allowing users to securely register, log in, and access their personal content.

### **1.2 Scope**
This app will serve as a tourist guide for Dinajpur, showcasing popular tourist spots and historical places in the region. It will provide:
- Detailed descriptions of places.
- User authentication using **Supabase** (email/password).
- A user-friendly interface for browsing the places.

### **1.3 Definitions, Acronyms, and Abbreviations**
- **Supabase**: An open-source backend-as-a-service that provides authentication, real-time databases, and storage solutions.
- **SRS**: Software Requirements Specification.
- **UI**: User Interface.
- **API**: Application Programming Interface.

### **1.4 References**
- [Supabase Documentation](https://supabase.io/docs)
- [Flutter Documentation](https://flutter.dev/docs)

### **1.5 Overview**
This SRS document outlines the functional and non-functional requirements for the Dinajpur Tourism App. The document is divided into multiple sections, detailing the use cases, system architecture, design constraints, and external interfaces.

---

## **2. Overall Description**

### **2.1 Product Perspective**
The Dinajpur Tourism App will be a mobile application developed using **Flutter**. The app will be integrated with **Supabase** for authentication. The app will display a list of tourist attractions in Dinajpur, including their descriptions, images, and related information.

### **2.2 Product Functions**
The key features of the app include:
- **User Authentication**: Registration, login, and logout functionality using Supabase authentication.
- **Tourist Places**: A list of tourist attractions in Dinajpur with details about each location.
- **Place Details**: A detailed page for each tourist spot, including text and images.
- **User Settings**: Option to toggle between light and dark modes.

### **2.3 User Characteristics**
- **Tourists**: The primary users will be tourists interested in exploring Dinajpur’s attractions.
- **Local Users**: Local users may also use the app to explore nearby attractions and provide feedback.

### **2.4 Constraints**
- **Mobile-Only**: This app is designed to run on mobile devices (Android and iOS).
- **Internet Connectivity**: Requires an internet connection to fetch data from Supabase.
- **Supabase Limitations**: The app relies on Supabase for authentication and data storage. Any limitations or downtime of Supabase services may affect the app.

### **2.5 Assumptions and Dependencies**
- The app assumes that users will have a stable internet connection for registration, login, and browsing tourist places.
- The app depends on the **Supabase** authentication system for secure user registration and login.

---

## **3. External Interface Requirements**

### **3.1 User Interfaces**
The user interface will be simple and easy to navigate:
- **Login Page**: The user can register or log in using email and password.
- **Home Screen**: After logging in, the user will see a list of tourist places in Dinajpur with images and brief descriptions.
- **Place Details Page**: Each tourist place will have a detailed page showing more information, pictures, and any other relevant content.
- **Settings**: Users can toggle between dark and light themes.

### **3.2 Hardware Interfaces**
- **Mobile Device**: The app is intended to run on smartphones and tablets.
- **Touchscreen**: The app will be optimized for touch gestures.

### **3.3 Software Interfaces**
- **Supabase API**: The app interacts with Supabase for user authentication and data storage.
- **Flutter SDK**: The app is built using the Flutter framework.

---

## **4. System Features**

### **4.1 User Authentication**
- **Description**: The app will provide a login and registration system using Supabase authentication.
- **Functional Requirements**:
  - **Login**: The user must enter a valid email and password to log in.
  - **Registration**: The user must provide an email, password, and other necessary information to create a new account.
  - **Password Management**: Users should be able to reset their password if forgotten.

### **4.2 Tourist Places List**
- **Description**: The app will display a list of tourist spots in Dinajpur.
- **Functional Requirements**:
  - Display a list of tourist places with a brief description.
  - Show images related to each place.
  - Provide a search functionality to filter places by name or category.

### **4.3 Place Details**
- **Description**: Users can view detailed information about each tourist place.
- **Functional Requirements**:
  - Display a detailed description of the place.
  - Show a gallery of images related to the place.
  - Display information like location, history, and nearby attractions.

### **4.4 Dark/Light Mode Toggle**
- **Description**: The user can toggle between light and dark themes.
- **Functional Requirements**:
  - A button to switch between light and dark mode.
  - The app’s UI should update accordingly.

---

## **5. Non-Functional Requirements**

### **5.1 Performance Requirements**
- The app should be responsive and load the tourist places list within 2 seconds.
- The app should handle at least 1000 users without performance degradation.

### **5.2 Security Requirements**
- User data, including email and password, should be securely handled using **Supabase Authentication**.
- All user passwords should be encrypted and never stored in plain text.

### **5.3 Reliability**
- The app should have 99% uptime, with downtime only during maintenance or Supabase outages.
- The app should gracefully handle any connection errors (e.g., network failure or server issues).

### **5.4 Usability**
- The app should be intuitive and easy to navigate.
- The design should be mobile-friendly and responsive.

### **5.5 Portability**
- The app should be portable and work on both Android and iOS platforms.

---

## **6. Appendix**

### **6.1 Supabase API Documentation**
- Supabase Authentication API documentation can be found [here](https://supabase.io/docs/guides/auth).

---

## **7. Conclusion**

This document provides the functional and non-functional requirements for the **Dinajpur Tourism App**. It will help developers and stakeholders understand the app's features, functionalities, and design constraints. This SRS ensures that the app will meet the expectations of the users and provide a smooth experience for exploring Dinajpur's tourist attractions.
