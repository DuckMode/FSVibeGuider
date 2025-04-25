# Configuration Guide

This guide explains how to configure VibeNavigator for your specific needs.

## Configuration Files

VibeNavigator uses several configuration files:

1. `.env` - Environment variables for the server
2. `client/src/config.js` - Client-side configuration
3. `server/config/default.js` - Default server configuration

## Environment Variables

The following environment variables can be set in the `.env` file:

| Variable | Description | Default |
|----------|-------------|---------|
| PORT | The port the server will run on | 5000 |
| MONGODB_URI | MongoDB connection string | mongodb://localhost:27017/vibe-navigator |
| JWT_SECRET | Secret key for JWT authentication | (No default, must be set) |
| NODE_ENV | Environment (development, production, test) | development |

## Client Configuration

The client configuration file (`client/src/config.js`) contains settings for the frontend application:

```javascript
const config = {
  apiUrl: process.env.REACT_APP_API_URL || 'http://localhost:5000/api',
  defaultTheme: 'light',
  // Other client settings
};

export default config;
```

## Server Configuration

The server configuration file (`server/config/default.js`) contains settings for the backend:

```javascript
module.exports = {
  port: process.env.PORT || 5000,
  mongoUri: process.env.MONGODB_URI || 'mongodb://localhost:27017/vibe-navigator',
  jwtSecret: process.env.JWT_SECRET,
  jwtExpiration: '1d',
  // Other server settings
};
```

## Advanced Configuration

### Customizing Themes

To customize the application theme, modify the theme settings in:

```
client/src/styles/theme.js
```

### Configuring API Rate Limiting

Rate limiting can be configured in:

```
server/middleware/rateLimiter.js
```

### Logging Configuration

Logging settings can be adjusted in:

```
server/config/logger.js
```
