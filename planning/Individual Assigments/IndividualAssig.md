# Individual Assignment Specifications

- Team: Hackathon Organizer
- Iteration: Iteration 1

## Special Roles

- Project Coordinator: Alejandro Gil Torres 
- Quality Assurance Czar: Saurab Dulal
- Video Demo Creators:
  - Sajib Sen
- Demo-Booth Operator: Saurab Dulal

## Tasks: Alejandro Gil Torres

### Task 1: Login/Sign Up
- Description: Create a Log In / Sign Up System for the registered users to log in or sign up for the platform
- How to Evaluate: A user will be able log in to the platform with the credentials he/she signed up with.
- Outcome of Task: I created a login system that works great, has session control and works with cookies. It was an experience I really enjoyed. 

### Task 2: Profile view
- Description: On this view, the user will be able to see his information as well as how many events he is registered, participating or participated and some information about the users/organizations he is following
- How to Evaluate: The page will display info owned by the user.
- Outcome of Task: I am offering personalized content bases on the session open and the user that is logged in.

### Task 3: Edit Profile
- Description: The user will access to a new view where it can review its information and modify if he needs/wants to.
- How to Evaluate: A user will be able to edit his information.
- Outcome of Task: This was a simple form to edit basic user information that will be updated in the future with more information about the user.

### Task 4: Hackathon owner view.
- Description: The owner of the event will have access to a summary of the event, how many users have registered on it and review the proposals. It will be shown in this view.
- How to Evaluate: The information of the hackathon will be display in this view, the details and the users registed to it, as well as the proposals, if there is any will show in this view.
- Outcome of Task: This view is incompleted for some integration issues during the development. We will need to work on this part over during the next iteration.

### Task 5: Seed the Database
- Description: Create some users, prepare the DB skeleton
- How to Evaluate: The database will be wellformed, and the restricitons will apply  for required data for users and the information for the hackathon. Test cases will be provided for testing that everything is working as it should be.
- Outcome of Task: I learned a new method to seed large amounts of data into a Database, that I think it will be really resourcefull for the future.

## Tasks: Sajib Sen

### Task 1: Create Hackathon 
- Description: Create a page for a User(as owner) or an Admin to create a Hackathon by putting required and optional attributes and description
- How to Evaluate: A user as a owner or an admin can create a Hackathon by putting all attributes.
- Outcome of Task: User can create a hackathon after loged in successfully.

### Task 2: Edit/Modify Hackathon 
- Description: A User(as owner) can edit a Hackathon by putting required and optional attributes and description.
- How to Evaluate: A user(as owner) can edit an already created Hackathon.
- Outcome of Task: After creating a hackathon user/admin can modify the information of the hackathon

### Task 3: Search a Hackathon
- Description: Create a view for a user to search the list of available hackathons. 
- How to Evaluate: A user can search for a Hackathon by name, if found, hackathon or list of related hackathon(only public) is shown in this page
- Outcome of Task: An advanced search option is available in the nav bar as well as in users profile to search for a hackathon with different attributes

### Task 4: Search a private Hackathon
- Description: Create a view for a user to search a private hackathon i.e. via some token
- How to Evaluate: A user can search for a private Hackathon, he should use some private token to search. This will return hackathon details if found. If he/she put wrong token then an error message will show up.
- Outcome of Task: This task is still incomplete. We will add this feature when a hackathon is created.

### Task 5: Voting System
- Description: Create a view where a user can give votes to all submitted proposals they would like to work on.
- How to Evaluate: A user can give vote to all submitted proposals for a Hackathon.
- Outcome of Task: The code for voting system is complete but due to integration issue it still not functional

### Task 6: Seed Required Data
- Description: Data for sample proposal and sample Hackathon will be provided in the database.
- How to Evaluate: The database will be designed as class diagram says with model validation and test data.
- Outcome of Task: During the iteration we decided to seed only user data and then create the subsequent data in online. 

## Tasks: Saurab Dulal

### Task 1: Admin Login
- Description: Create a login page for a web admin (this is separate than user login window). 
- How to Evaluate: An admin will be able to log in to the backend with the credentials he/she is provided. There will be no provision for a user to register as an admin. This user is created manually in the system
- Outcome of Task: A user can successfully login into the system with his/her email and password.

### Task 2: Admin backend: Display hackathon
- Description: Create a view to display hackathons for admin
- How to Evaluate: Brief information about the submitted hackathon will be displayed on this page along with the status i.e. approved or rejected
    - Outcome of Task: This features is still in progress. Right now an admin have all the features what a user has.

### Task 3: Admin backend: Display User
- Description: Create a view to display all registered users for admin
- How to Evaluate: Short info about all the registered user will be displayed in this view. 
- Outcome of Task: Being loged in as admin, admin can see all the available user registered.

### Task 4: Admin backend: Delete/edit hackathon or a user
- Description: Create a view for an admin to approve or unapprove a hackathon or a user(if needed)
- How to Evaluate: Admin will be able to delete or approve hackathon or a user from the system. Unapproved user or hackathon
should be removed from the database and from the display page after the certain retention period.  
- Outcome of Task: Admin can delete a user from the system. In this iteration we provided the feature to delete user but not their hackathons. In the next iteration we will add the remaining features in the admin backend.

**Note:** All the admin page is visible for a logged in admin only

### Task 5: Creating Proposal 
- Description: A user can create one or many proposals if he/she wish. Besides all required attributes, he/she can add and fill customize form also.
- How to Evaluate: A user can create one or many proposals for a Hackathon with customizing form as an added feature. This should populate appropriate fields in the database. 
- Outcome of Task: A user can successfully create a proposal successfully. Right now we only provide to attributes during creating proposal. We will add the customizing form feature in the next iteration

### Task 6: Edit Proposal
- Description: Create a view for a user to modify the submitted proposal  
- How to Evaluate: A user will be able to modify his/her proposals. Though there will be time limitations till when he/she can perform this activity. This will be verified by the appropriate test cases.
- Outcome of Task: All the codes for edit/update a proposal has been added. Due to integration issue during development this feature is in progress.

### Task 7: Registration for a Hackathon
- Description: Once a user finds a hackathon private or public, this view will help him/her to register for it 
- How to Evaluate: A user will be able to register for a Hackathon(private or public)
- Outcome of Task: We added this feature as Joint Event in the Hackathon show page. This features is still in progress and we will complete it in the next iteration.
