# Create a user
user = User.create!(email: "test@example.com", password: "password")

# Create a project
project = Project.create!(name: "Homepage Redesign", status: "In Progress")

# Add comments and status changes
project.comments.create!(content: "Initial feedback", user: user)
project.status_changes.create!(previous_status: "Not Started", new_status: "In Progress", user: user)