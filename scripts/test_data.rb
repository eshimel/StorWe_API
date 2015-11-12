




 one = Contribution.create!(submission: 'Earl was born Earl Smith, but no one knows why he changed his name. Maybe, he was bored.', outline_id: 1, user_id: 1)
 two = Contribution.create!(submission: 'Mostly I just want to write a sample to see if I can pull up a story index.', outline_id: 1, user_id: 2 )
  three = Contribution.create!(submission: 'This better work, and by the way, Earl changed his name because there were too many Smiths around.', outline_id: 1, user_id: 3)

Story.create!(contribution: one)
Story.create!(contribution: two)
Story.create!(contribution: three)

