# Add to json of UserSerializer
class CurrentUserSerializer < UserSerializer
  attributes :details

  def details
    'Details you only get if this is the current_user' if current_user

#person 1 has no user clues
#has an outline provided
#submits a contribution
#can see the story in progress after submission
#can leave a clue for the next user


#person 2 has previous user clue
#has the same outline as person 1 provided
#submits a contribution
#can see the story in progress after submission
#can leave a clue for the next user

#person 3 has previous user clue
#has the same outline as person's one and two
#submits a contribution to finish the story
#can see the story in progress after submission
#finishes the story upon submission
  end
end
