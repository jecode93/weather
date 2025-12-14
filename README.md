# Weather App API with JWT Authentication

# Rails API Authentication Tutorial Series

A comprehensive guide to building secure API authentication systems with Ruby on Rails, covering multiple approaches from basic implementation to production-ready solutions.

## 📚 Tutorial Branches

This repository contains multiple branches, each representing a complete lesson in API authentication with Rails. Each branch builds upon fundamental concepts while exploring different authentication strategies.

### Branch Overview

#### 🔰 Foundational Lessons

**`lesson/our-first-api`** - [PR #3]
- Introduction to Rails API development
- Basic API structure and endpoints
- RESTful API design principles
- JSON response formatting

#### 🔐 Authentication Implementations

**`lesson/json-web-token-authentication-from-scratch`** - [PR #56]
- Build JWT authentication without external gems
- Understand JWT structure and signing
- Manual token generation and validation
- Custom authentication logic

**`json-web-tokens-with-devise-and-warden`** - [PR #58]
- Integrate JWT with Devise authentication
- Leverage Warden strategies
- Session management with tokens
- Production-ready authentication setup

**`json-api-format-and-active-model-serializers`** - [PR #59]
- Implement JSON API specification
- Use Active Model Serializers
- Standardized API responses
- Resource relationships and includes

**`lesson/vuejs-jwt-auth-with-rails-apis-and-localstorage`** - [PR #60]
- Full-stack authentication flow
- Vue.js frontend integration
- Token storage with localStorage
- Protected routes and API calls
- Complete authentication lifecycle

## 🚀 Getting Started

### Prerequisites

- Ruby 2.7+ or 3.x
- Rails 6.0+
- PostgreSQL (or your preferred database)
- Node.js and npm (for Vue.js lesson)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd <repository-name>
```

2. Checkout the desired lesson branch:
```bash
git checkout lesson/our-first-api  # Start with the basics
# or
git checkout lesson/vuejs-jwt-auth-with-rails-apis-and-localstorage  # Jump to full-stack
```

3. Install dependencies:
```bash
bundle install
```

4. Setup the database:
```bash
rails db:create db:migrate db:seed
```

5. Start the server:
```bash
rails server
```

## 📖 Learning Path

### Recommended Order

1. **lesson/our-first-api** - Understand Rails API basics
2. **lesson/json-web-token-authentication-from-scratch** - Learn JWT fundamentals
3. **json-web-tokens-with-devise-and-warden** - Production authentication
4. **json-api-format-and-active-model-serializers** - API standardization
5. **lesson/vuejs-jwt-auth-with-rails-apis-and-localstorage** - Full-stack integration

### Key Concepts Covered

- 🔑 JWT (JSON Web Tokens) authentication
- 🛡️ Secure token generation and validation
- 📦 Token storage strategies (localStorage, httpOnly cookies)
- 🔒 Protected API endpoints
- 👤 User registration and login flows
- 🔄 Token refresh mechanisms
- 🎨 Frontend-backend integration
- 📋 JSON API specification compliance

## 🛠️ Technologies Used

- **Backend**: Ruby on Rails (API mode)
- **Authentication**: JWT, Devise, Warden
- **Serialization**: Active Model Serializers
- **Frontend** (Vue.js lesson): Vue.js 2/3
- **Database**: PostgreSQL/MySQL/SQLite

## 📝 API Documentation

Each branch includes specific API endpoints. The main API structure:

### Authentication Endpoints
```
POST   /api/v1/user_token           - User authentication (JWT token generation)
GET    /users/sign_up               - User registration page (Devise)
POST   /users                       - Create user account (Devise)
GET    /users/sign_in               - User login page (Devise)
POST   /users/sign_in               - User authentication (Devise)
DELETE /users/sign_out              - User logout (Devise)
```

### API Endpoints (v1)
```
GET    /api/v1/locations            - List all locations
POST   /api/v1/locations            - Create a new location
GET    /api/v1/locations/:id        - Get a specific location
PATCH  /api/v1/locations/:id        - Update a location
DELETE /api/v1/locations/:id        - Delete a location

GET    /api/v1/locations/:location_id/recordings       - List recordings for a location
POST   /api/v1/locations/:location_id/recordings       - Create a recording for a location
GET    /api/v1/locations/:location_id/recordings/:id   - Get a specific recording
PATCH  /api/v1/locations/:location_id/recordings/:id   - Update a recording
DELETE /api/v1/locations/:location_id/recordings/:id   - Delete a recording
```

### Authentication
API endpoints require a valid JWT token in the Authorization header:
```
Authorization: Bearer <your_jwt_token>
```

Refer to individual branch documentation for specific request/response payloads and authentication requirements.

## Authors

👤 **Jean Emmanuel Cadet**

- 🌐 **Portfolio:** [jeanemmanuelcadet.com](https://jeanemmanuelcadet.com)
- ✍️ **Blog:** [codecurious.dev](https://codecurious.dev)
- 💻 **GitHub:** [github.com/jecode93](https://github.com/jecode93)
- 🔗 **LinkedIn:** [linkedin.com/in/jean-emmanuel-cadet](https://linkedin.com/in/jean-emmanuel-cadet)
- 📧 **Email:** [jeanemmanuelcadet@gmail.com](mailto:jeanemmanuelcadet@gmail.com)


## 🤝 Contributing

This is a tutorial repository. If you find issues or have suggestions:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## 📄 License

[Add your license here]

## 🙋 Support

If you have questions or run into issues:
- Open an issue in this repository
- Check existing pull requests for discussions
- Review branch-specific documentation

## 🔗 Resources

- [JWT.io](https://jwt.io/) - JWT documentation
- [Devise](https://github.com/heartcombo/devise) - Authentication solution
- [JSON API Specification](https://jsonapi.org/)
- [Rails API Guide](https://guides.rubyonrails.org/api_app.html)

---

**Current Branch**: `development`

Switch branches to explore different lessons:
```bash
git branch -a  # View all branches
git checkout <branch-name>  # Switch to a lesson
```
