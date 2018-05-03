# Individual Assignment Specifications

- Team: Hackathon Organizer
- Iteration: Iteration 2

## Special Roles

- Project Coordinator: Alejandro Gil Torres 
- Quality Assurance Czar: Saurab Dulal
- Video Demo Creators:
  - Sajib Sen
- Demo-Booth Operator: Saurab Dulal

## Tasks: Alejandro Gil Torres

### Task 1: Finish Profile view for user/admin
- Description: Users and Admins will have access to the information on their profils as hackathons, followers, upcoming hackathons...
- How to Evaluate: The information will be shown on the user profile page according to the user and his/her related content.
- Outcome of Task: After login as user or admin users can see their profile page as well as can see who is following and the followers name 

### Task 2: Responsive design
- Description: [Log in]/[sign up],[User Profile],[Edit information], font sizes, switch between different devices will mantain a user friendly interface, will be responsive.
- How to Evaluate: The UI will offer a  responsive designe.
- Outcome of Task: The interface is preety user friendly. The nav bar given top of the webpage makes it easy to access.

### Task 3: Change password
- Description: A user will be able to change his/her password.
- How to Evaluate: The user will be able to change the password succesfully.
- Outcome of Task: After login user can change his/her password as well as credentials by clicking the profile button.

### Task 4: Followers system
- Description: A user will be able to follow system and check the people that follows him.
- How to Evaluate: A user will follow another user successfully and it will be added to the user following list
- Outcome of Task: After clicking joint event if the creator of the event creates some updates then the user will get the updates. Besides a user can follow another user by clicking the follow button on another user's profile


### Task 5: Register Hackathon
- Description: A user will be able to register to an event of his/her choice.
- How to Evaluate: A user will be able to register to the event he/she selected and access the features of a registered user.
- Outcome of Task: By clicking the joint event button a user can register him/her to that event and the updates will be shown in the participants block of the hackathon page

### Task 6: Remove Admin from User List.
- Description: A normal user won't be able to find admin users on the user list.
- How to Evaluate: Admin users won't appear when a user makes search for another users.
- Outcome of Task: Admin user can be find as well as a user except admin can not able to delete other user.


## Tasks: Saurab Dulal

### Task 1: Submit Proposal
- Description: Create a button to submit a proposal on the hackathon page
- How to Evaluate: A logged in user should be able to submit a proposal for a hackathon
- Outcome of Task: If a user do not logged in then he/she will not be able to submit any proposal

### Task 2: Follow Hackathon
- Description: Create a button to follow a hackathon
- How to Evaluate: A logged in user should be able to follow a hackathon
- Outcome of Task: In the homepage as well as in the hackathon show page user can click the follow button and can follow the hackathon.

### Task 3: Customized "New Hackathon Page"
- Description: "Create new hackathon" page should include a text field to specify private/public hackathon
- How to Evaluate: A user should be able to create a private or public hackathon
Note: This is to separate a private or a public hackathon so that to restrict private hackathon being displayed on the homepage. 
- Outcome of Task: A user can create a hackathon with many form fields for the hackathon and a custom form filds to put additional information for the hackathon.

### Task 4: UI/UX
- Description: Homepage and hackathon pages should contain responsive and user-friendly design
- How to Evaluate: As part of this task, responsive design(good rendering on all devices) and friendly interface should be incorporated in home and hackathon page/s 
- Outcome of Task: The UI is preety user friendly. From any page a user can visit another page if he/she has the permit

### Task 5: Show registered user
- Description: Create a field in "show hackathon page" to display all the user registered to a hackathon
- How to Evaluate: All the users registered for a hackathon will be shown in "show hackathon page"
- Outcome of Task: In the show hackathon page the participants block shows the registered user's name

### Task 6: Show Proposal
- Description: Create a page to show all the proposals submitted for a hackathon
- How to Evaluate: All the proposal submitted for a hackathon will be shown on a specific page
- Outcome of Task: After logged in a user can view all the proposals submitted for the particular hackathon by clicking "all submitted proposals" button


## Tasks: Sajib Sen

### Task 1: Restrict private hackathon search
- Description: A field in search new page to search a private hackathon with a token.
- How to Evaluate: A user can not search a private hackathon without it's token. The user can only search the public hackathons.
- Outcome of Task: In the advanced search option, a user will be able to put a certain token to search a private hackathon. Right now the search tokens are 'yes' or 'no'

### Task 2: Edit Hackathon
- Description: A User(as owner) can edit a Hackathon by putting required and optional attributes and description.
- How to Evaluate: A user(as owner) can edit an already created Hackathon.
- Outcome of Task: After creating a hackathon user can edit the hackathon easily and post the updates to the show page.

### Task 3: Calculate total voting
- Description: This task will calculate total given votes for a proposal and ranked those proposal on proposal index based in decending order
- How to Evaluate: A user can vote for proposal and can see how the proposals are ranked according to the number of votes given.
- Outcome of Task: After logged in a user can vote for proposal. Though the code for ranking proposals in decending order has been given by creating migration named "add_cached_votes_to_proposals", this features still has some bugs.


### Task 5: UI for proposal pages
- Description: UI sketches for proposal pages will be made uniform with other pages so that every page looks same
- How to Evaluate: When a user create a proposal he/she can see that all pages style are uniform to look
- Outcome of Task: All pages looks alike and has the exact same nav bar features which provides easy access to all pages.

