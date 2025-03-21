# Project Conversation History

Created By : Nipuna Rambukkanage
[My Linkedin](https://www.linkedin.com/in/nipuna-rambukkanage-080ab2144/)

A Ruby on Rails application for managing project discussions and status changes.

![Project Conversation History Screenshot 1](/screenshots/ss1.png)
![Project Conversation History Screenshot 2](/screenshots/ss2.png)
![Project Conversation History Screenshot 3](/screenshots/ss3.png)
![Project Conversation History Screenshot 4](/screenshots/ss4.png)
![Project Conversation History Screenshot 5](/screenshots/ss5.png)

## Features

- User authentication (Sign Up/Login)
- Create and manage projects
- Add comments to projects
- Track status changes
- Responsive design
- Paginated history

## Technologies Used

- Ruby on Rails 7
- SQLite (development)
- Devise (authentication)
- Tailwind CSS (styling)
- Kaminari (pagination)

## Installation

1. **Prerequisites**
   - Ruby 3.2.0+
   - Rails 7.0.0+
   - SQLite3

2. **Setup**
   ```bash
   git clone https://github.com/yourusername/project-conversation-history.git
   cd project-conversation-history
   bundle install
   rails db:migrate
   rails db:seed
   rails server