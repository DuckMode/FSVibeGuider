# Installation Guide

This guide will walk you through the process of installing VibeNavigator on your system.

## Prerequisites

Before installing VibeNavigator, ensure you have the following prerequisites installed:

- Node.js (v14 or later)
- npm (v6 or later)
- MongoDB (v4.4 or later)

## Installation Steps

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/VibeNavigator.git
cd VibeNavigator
```

### 2. Install Dependencies

```bash
# Install server dependencies
cd server
npm install

# Install client dependencies
cd ../client
npm install
```

### 3. Configure Environment Variables

Create a `.env` file in the server directory with the following variables:

```
PORT=5000
MONGODB_URI=mongodb://localhost:27017/vibe-navigator
JWT_SECRET=your_jwt_secret
```

### 4. Start the Development Server

```bash
# Start the server
cd ../server
npm run dev

# In a separate terminal, start the client
cd ../client
npm start
```

## Verifying Installation

After starting both the server and client, you should be able to access the application at:

```
http://localhost:3000
```

## Troubleshooting

If you encounter any issues during installation, try the following:

1. Ensure all prerequisites are installed correctly
2. Check that you have the correct versions of Node.js and npm
3. Verify that MongoDB is running
4. Check the console for any error messages
