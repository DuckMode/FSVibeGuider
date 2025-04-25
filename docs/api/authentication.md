# Authentication API

This document describes the authentication endpoints for the VibeNavigator API.

## Overview

VibeNavigator uses JWT (JSON Web Tokens) for authentication. To access protected endpoints, you need to:

1. Register a user account or log in with existing credentials
2. Include the JWT token in the Authorization header of your requests

## Endpoints

### Register a New User

```
POST /api/auth/register
```

#### Request Body

```json
{
  "username": "johndoe",
  "email": "john@example.com",
  "password": "securepassword123"
}
```

#### Response

```json
{
  "success": true,
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "user": {
    "id": "60d21b4667d0d8992e610c85",
    "username": "johndoe",
    "email": "john@example.com"
  }
}
```

### Login

```
POST /api/auth/login
```

#### Request Body

```json
{
  "email": "john@example.com",
  "password": "securepassword123"
}
```

#### Response

```json
{
  "success": true,
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...",
  "user": {
    "id": "60d21b4667d0d8992e610c85",
    "username": "johndoe",
    "email": "john@example.com"
  }
}
```

### Get Current User

```
GET /api/auth/me
```

#### Headers

```
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
```

#### Response

```json
{
  "id": "60d21b4667d0d8992e610c85",
  "username": "johndoe",
  "email": "john@example.com",
  "createdAt": "2023-04-01T12:00:00.000Z"
}
```

### Logout

```
POST /api/auth/logout
```

#### Headers

```
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
```

#### Response

```json
{
  "success": true,
  "message": "Logged out successfully"
}
```

## Error Responses

### Invalid Credentials

```json
{
  "success": false,
  "message": "Invalid credentials"
}
```

### Token Expired

```json
{
  "success": false,
  "message": "Token expired"
}
```

### Invalid Token

```json
{
  "success": false,
  "message": "Invalid token"
}
```

## Using Authentication in Your Requests

To authenticate your requests, include the JWT token in the Authorization header:

```
Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
```

Example using fetch:

```javascript
fetch('https://api.vibenavigator.com/api/protected-route', {
  method: 'GET',
  headers: {
    'Content-Type': 'application/json',
    'Authorization': `Bearer ${token}`
  }
})
.then(response => response.json())
.then(data => console.log(data));
```
