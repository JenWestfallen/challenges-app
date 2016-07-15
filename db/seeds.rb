User.create!([
  {email: "grandma@aol.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-07-10 23:39:24", last_sign_in_at: "2016-07-10 23:39:24", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: false},
  {email: "me@aol.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 11, current_sign_in_at: "2016-07-14 20:31:24", last_sign_in_at: "2016-07-13 23:19:29", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true}
])
CategorizedChallenge.create!([
  {challenge_id: 1, category_id: 1},
  {challenge_id: 1, category_id: 6},
  {challenge_id: 2, category_id: 2},
  {challenge_id: 2, category_id: 8},
  {challenge_id: 3, category_id: 2},
  {challenge_id: 4, category_id: 6},
  {challenge_id: 5, category_id: 3},
  {challenge_id: 5, category_id: 5},
  {challenge_id: 5, category_id: 9},
  {challenge_id: 8, category_id: 1},
  {challenge_id: 8, category_id: 4},
  {challenge_id: 9, category_id: 1},
  {challenge_id: 10, category_id: 6},
  {challenge_id: 11, category_id: 2},
  {challenge_id: 13, category_id: 2},
  {challenge_id: 13, category_id: 3},
  {challenge_id: 14, category_id: 3},
  {challenge_id: 14, category_id: 4}
])
Category.create!([
  {name: "Manners"},
  {name: "Environment"},
  {name: "Learning"},
  {name: "Giving"},
  {name: "Peace"},
  {name: "Kindness"},
  {name: "Voice"},
  {name: "Children"},
  {name: "Education"},
  {name: "Poverty"},
  {name: "Animals"},
  {name: "Racial Equality"},
  {name: "War"},
  {name: "Violence"},
  {name: "Corruption"},
  {name: "Refugees"}
])
Challenge.create!([
  {name: "Clean Our Planet", start_date: nil, description: "If we all just picked up one piece of litter today, imagine how much cleaner our neighborhoods would be.", creator_id: nil, url: nil},
  {name: "Donate This Week", start_date: nil, description: "Do you have something in the back of your closet you forgot you had? Do you have leftovers from that meal at lunch? Donate something!", creator_id: nil, url: nil},
  {name: "Learn About Others", start_date: "06/30/2016", description: "Let's stretch our understanding about others to build empathy.", creator_id: nil, url: nil},
  {name: "Smile", start_date: "06/24/2016", description: "Smile at those around you - more than usual!", creator_id: nil, url: nil},
  {name: "Prepare Our Parks", start_date: "07/01/2016", description: "Spend at least 5 minutes cleaning up a park near you. ", creator_id: nil, url: nil},
  {name: "Pick Up Flowers", start_date: "06/30/2016", description: "How nice are flowers!", creator_id: 1, url: nil},
  {name: "Pick Up Flowers1", start_date: "06/30/2016", description: "How nice are flowers!", creator_id: 1, url: nil},
  {name: "Pick Up Flowers2", start_date: "06/30/2016", description: "How nice are flowers!", creator_id: 1, url: nil},
  {name: "Wave to someone", start_date: "06/29/2016", description: "say hi or bye or something", creator_id: 1, url: nil},
  {name: "Tutor", start_date: "", description: "As you teach, you learn.", creator_id: 1, url: nil},
  {name: "Enjoying Nature", start_date: "07/10/2016", description: "Nature rules! I love it!", creator_id: 1, url: nil},
  {name: "Tutoring", start_date: "07/20/2016", description: "Help teach someone something new!", creator_id: 1, url: "http://www.enspire.com/wp-content/uploads/2014/02/LDS_Art_Home.png"},
  {name: "Cut Grass", start_date: "08/17/2016", description: "How much fun is cutting grass!!!???", creator_id: 1, url: "http://iss.zillowstatic.com/image/contemporary-landscape-yard-with-fence-i_g-ISptj4krmypz0r0000000000-LUhxq.jpg"}
])
Comment.create!([
  {message: "This is a test.", user_id: 1},
  {message: "This is a new comment!", user_id: 1},
  {message: "It works!!!", user_id: 1},
  {message: "Fingers crossed!", user_id: 1}
])
Participation.create!([
  {user_id: 1, challenge_id: 3, status: "accepted"},
  {user_id: 1, challenge_id: 4, status: "accepted"},
  {user_id: 1, challenge_id: 3, status: "removed"},
  {user_id: 1, challenge_id: 11, status: "removed"},
  {user_id: 1, challenge_id: 10, status: "accepted"},
  {user_id: 1, challenge_id: 6, status: "accepted"},
  {user_id: 1, challenge_id: 8, status: "removed"},
  {user_id: 2, challenge_id: 4, status: "accepted"},
  {user_id: 2, challenge_id: 8, status: "accepted"},
  {user_id: 1, challenge_id: 3, status: "accepted"}
])
PossibleParticipation.create!([
  {user_id: 1, challenge_id: 10, status: "saved"},
  {user_id: 1, challenge_id: 11, status: "saved"},
  {user_id: 1, challenge_id: 8, status: "saved"},
  {user_id: 1, challenge_id: 11, status: "saved"},
  {user_id: 1, challenge_id: 3, status: "removed"},
  {user_id: 1, challenge_id: 3, status: "saved"}
])
