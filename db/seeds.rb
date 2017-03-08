Category.create!([
  {name: "baked"},
  {name: "misc"},
  {name: "gross"},
  {name: "All Natural"}
])

User.create!([
  {name: "James Johnson", email: "jamesjohnson@gmail.com", password: "password", password_confirmation: "password"},
    {name: "Anne Marie", email: "annemarie@gmail.com", password: "password", password_confirmation: "password"},
      {name: "Jason Bourne", email: "jasonbourne@gmail.com", password: "password", password_confirmation: "password"}
])

Recipe.create!([
  {title: "Hand Sandwich", ingredients: "Bacon, lettuce, tomato, left hand, right hand", directions: "place bacon, lettuce, and tomato in left hand, then place right hand on top, be wary of first bite", image: "http://www.foodiggity.com/wp-content/uploads/2012/06/Hand-Sandwiches.jpeg", prep_time: 5, user_id: 1},
  {title: "Human Meat", ingredients: "Victim", directions: "Chop, prepare, and enjoy", image: "http://previews.123rf.com/images/pixdesign123/pixdesign1231407/pixdesign123140700535/29930620-Cartoon-Character-of-meat-steak-with-sign-board-Stock-Photo.jpg", prep_time: 500, user_id: 3},
  {title: "Toothpaste Gumbo", ingredients: "Crest Extra Whitening", directions: "Boil toothpaste", image: "http://cdn.trendhunterstatic.com/thumbs/paste-instead-of-waste.jpeg", prep_time: 450, user_id: 1},
  {title: "Voo Doo Lasagna", ingredients: "live chicken, working knowledge of latin, and noodles", directions: "latice noodles over live chicken, say funny words while keeping chicken in pan, cook on 450 for 50 mins", image: "https://s-media-cache-ak0.pinimg.com/originals/62/b8/fb/62b8fbb4e40f14073898972ee68235b4.jpg", prep_time: 2, user_id: 2}
])

CategoryRecipe.create!([
  {recipe_id: 1, category_id: 2},
  {recipe_id: 1, category_id: 4},
  {recipe_id: 2, category_id: 3},
  {recipe_id: 2, category_id: 4},
  {recipe_id: 3, category_id: 3},
  {recipe_id: 3, category_id: 2},
  {recipe_id: 4, category_id: 1},
  {recipe_id: 4, category_id: 2}
  ])