# StorWe_API

StorWe Web App
About: StorWe is a collaborative storytelling site, that uses contributions from its users to write new stories.  It’s a little like the game Telephone and a little like Exquisite Corpse.  Each story begins with three prompts/clues: subject, setting, theme, and each story has exactly 10 contributors. Once ten contributions have been submitted, a new story prompt starts.

User Stories:
(Users are referred to by the game as contributors)

As a visitor to the site, I want to know what I can do, so I can choose whether to register or not.
 Deliverables: A default page setting that includes a brief description of StorWe AND a full version of the most recent story.
 
As a contributor, I want to register a username and password, so I can login.
  Deliverables: Login Button with new user Registration option linking to the appropriate form that gets posted/“getted"  to/from a database.

As a contributor, I want to see a clue from the previous contributor, so I can keep the story on track.
 Deliverables:  A “read only” textbox with limited character inputs so contributors can see: the previous contributor’s clue before submitting  their story contribution.  
 
As a contributor, I want to know how many contributors have already added to the story, so I have understand how far along the story might be.
Deliverables: A counter that lets the contributor know what place their contribution will fall between 1-10.

As a contributor, I want to add content to the story, so I can contribute to it.
 Deliverables: An editable text box for contributors to write up to 200 characters in to contribute to the story.  A submit button, with a warning that explains, once you submit, you can’t change  your contribution.

As a contributor, I want to see the the whole “in-progress” story after contributing, so I can read it.
Deliverables:  A hidden “read only” text box that becomes unhidden after the contribution  is submitting. 

As a contributor, I want write a “keyword” clue for the next user, so they can keep the story on track.
Deliverables: “A “read and write” text box that contributors can provide their clues in after submitting their contribution AND seeing the whole story in progress. 

As a contributor, I want to read the complete story, so I can know how it end. 
Deliverables: A refresh button that reloads the  limited contributor generated story.

I used the following template to make a paper prototype of my layout, to help me figure out my user stories.

![copy of macbook screen with boxes](https://cloud.githubusercontent.com/assets/14185415/11225738/ea243fa8-8d49-11e5-9103-d29179d86273.jpg)


Logic
Stories
 The most recent completed story is available to read on the login/registration page
 Stories are complete when Outline changes
 The story in progress is visible only after a contribution is submitted

Outines 
Outlines are provided from the database upon login
Outlines change every ten Contributions

Clues
Users receive clues from the previous user upon login, unless you are the first user
After they submit their contribution, users submit clues for the next user 

Contributions
Users make a contribution and submit it upon login
A contribution is appended to the story in progress after submission 
Stories are made up of ten contributions

New user
middle of one
completes one



This project is udergoing some changes. please come back and check it out at a later time. Check out progress at http://eshimel.github.io/StorWe_Front_End/  
or checkout the front-end repo https://github.com/eshimel/StorWe_Front_End.

Notes about the USER authentication process
# User authentication

## Register

```
curl --include --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password",
    "password_confirmation": "an example password"
  }
}' http://localhost:3000/register
```

## Login

```
curl --request POST --header "Content-Type: application/json" -d '{
  "credentials": {
    "email": "an@example.email",
    "password": "an example password"
  }
}' http://localhost:3000/login
```

## Logout

```
curl --request DELETE --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/logout/1
```

# Users

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

# Books

## List

```
curl --header "Authorization: Token token=c017d611187e3350baffc52d35a4df69" http://localhost:3000/users
```

**OR**

```
curl http://localhost:3000/users
```

## Create

```
curl --request POST --header "Authorization: Token token=be249dc0231396806f24c953cafae03a" --header "Content-Type: application/json" -d '{
  "book": {
    "title":"The Hold",
    "isbn":"abc123def456"
  }
}'  http://localhost:3000/books
```
