# Smiles -API
Smiles is a social media platform built with React and Ruby on Rails that allows users to sign up, sign in, and create posts. Users can also view a feed of posts from other users, comment on posts, and like posts. The API is built with Ruby on Rails and uses PostgreSQL as its database.

## Getting Started
To get started with Smiles, you'll need to have Rails and Node.js installed on your machine.

### Clone the repository:

```
git clone git@github.com:Kennys-moringa-school-work/smiles-API.git
```

### Navigate to the project directory:

```bash
cd smiles-API
```

### Install the dependencies:
```
bundle install
yarn install
```

### Set up the database:
```
rails db:migrate
rails db:seed
```

### Start the Rails server:
```
rails server
```

# Features
## User Authentication
- Smiles uses Devise to implement user authentication. Users can sign up for an account, log in, and log out. Passwords are securely encrypted and stored in the database.

## Posts
- Users can create posts on Smiles, which can include text, images, and links. Posts can be edited and deleted by their creators. Users can also view a feed of posts from other users.

## Comments
- Users can comment on posts on Smiles. Comments can be edited and deleted by their creators.

## Smiles
- As a project, instead of liking a post, a user smiles at a post
- Users can as well see the number of smiles on other users posts
- Users can only smile at a post once, and can unsmile at a  post if they change their mind.

## API
- The Smiles API provides endpoints for all of the features listed above. Authentication is required for all endpoints except for the signup and login endpoints.

## Authentication
User authentication is implemented using Bcrypt, and access tokens are generated using the jwt gem. To authenticate a user, send a POST request to the /users/sign_in endpoint with the user's email and password in the request body. The API will respond with an access token, which should be included in the headers of all subsequent requests that require authentication.

## Endpoints
* POST /users - Create a new user
* POST /users/sign_in - Authenticate a user and retrieve an access token
* GET /posts - Retrieve a list of all posts
* POST /posts - Create a new post
* GET /posts/:id - Retrieve a single post by ID
* PUT /posts/:id - Update a post by ID
* DELETE /posts/:id - Delete a post by ID
* POST /posts/:id/comments - Create a new comment on a post
* PUT /comments/:id - Update a comment by ID
* DELETE /comments/:id - Delete a comment by ID
* POST /posts/:id/smiles - Create a new smile on a post
* DELETE /smiles/:id - Delete a smile by ID

# Technologies Used
Smiles uses the following technologies:
* Rails - for building the backend API and handling server-side logic.
* React - for building the frontend user interface and handling client-side interactions.
* Sqlite - for storing the application's data.
* Bcrypt - for implementing user authentication.
* JWT - for generating access tokens for authenticated requests.

# Contributing
Contributions to Smiles are welcome! If you'd like to contribute, please follow these steps:

* Fork the repository.
* Create a new branch with a descriptive name for your changes.
* Make your changes and commit them with clear and concise commit messages.
* Push your changes to your fork.
* Submit a pull request to the main repository.

## License
Smiles is licensed under the MIT License. See LICENSE.txt for more information.

## Conclusion
Smiles is a simple yet powerful social media platform that allows users to connect with each other, share their thoughts and experiences, and engage with other users' content. It's built with modern web technologies and provides a RESTful API for easy integration with other applications. Whether you're a developer looking to learn more about building web applications or a user looking for a new social media platform to try out, Smiles is a great choice.