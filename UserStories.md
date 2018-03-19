# Glossary of Terms

**Team:** Hackathon Organizer

## xxx (Second-level headings optionally may be used to group/categorize terms)

- Proposal
  - Theme for a hackathon to be selected
- Event
  - Refers to a hackathon itself.
# User Stories

## xxx (Second-level headings optionally may be used to group/categorize USs by type of functionality)

- Create proposal
  - Description: Form that creates an initial proposal for an event.
  - Dependencies: Log in / Sign Up
  - Estimate: 5
  - Priority: 4(of 5)
  - Status: Not Started
  - Author: Alejandro Gil Torres

- User Database
  - Description: Stores all the data a user ( username, email, skills, interests, etc)
  - Dependencies: No dependencies.
  - Estimate: 4
  - Priority: 5
  - Status: Not Started
  - Author: Alejandro Gil Torres

- Custom Form
  - Description: Each event will have the possibility to create a customize form for special requirements for the event
  - Dependencies: Create a Proposal - User Database
  - Estimate: 2
  - Priority: 2
  - Status: Not Started
  - Author: Alejandro Gil Torres

- Login webpage
  - Description: Contains the form that allows the user to LogIn or SignUp to the application.
  - Dependencies: UserDatabase - Display Home Page
  - Estimate: 3
  - Priority: 4
  - Status: Not Started
  - Author: Alejandro Gil Torres

- Create Hackathon
  - Description: Allows a user to create a new hackathon event
  - Dependencies: Display Home Page - User Home Page - Login
  - Estimate: 4
  - Priority: 5
  - Status: Not Started
  - Author: Alejandro Gil Torres
  
  - Display Home Page 
  - Description: Home page to display all the public hackathon and other stuffs
    - Some hackathon can be private as well, accessed only via some access code	
  - Dependencies: Soft dependency on “Create Hackathon”
  - Estimate: 4 
  - Priority: 2
  - Status: Not started
  - Author: Saurab Dulal

- Display Post Page
  - Description: Display page specific to a hackathon
    - This page should also check if hackathon is public or private. If private, it should not be displayed to an unauthorized user
  - Dependencies: Users Database, Create Hackathon 
  - Estimate: 3
  - Priority: 3
  - Status: Not started
  - Author: Saurab Dulal

- Admin Backend
  - Description: Manage each registered hackathon, check authenticity and give pass for the display
  - Dependencies: User Database, Create Hackathon
  - Estimate: 5 
  - Priority: 4
  - Status: Not started
  - Author: Saurab Dulal 

- User Profile Page 
  - Description: Display profile i.e. name, email etc of an user and provide edit/delete capabilities
  - Dependencies: Login Webpage, User Database
  - Estimate: 3 
  - Priority: 1 
  - Status: Not started
  - Author: Saurab Dulal 

- User’s Participation Page
  - Description: Show user’s participation i.e. registered hackathon, proposed hackathon and all 
  - Dependencies: Create Proposal, Custom form, Users Database
  - Estimate: 3 
  - Priority: 4
  - Status: Not started
  - Author: Saurab Dulal 

  
  
  
  
