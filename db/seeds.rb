# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


quizzes = Quiz.create([
  {title: 'How do you brush your teeth?', speaker: 'Buttface McGee'},
  {title: 'Why should we change underwear?', speaker: 'Danny Distressed'},
  {title: 'Do sharks have nightmares?', speaker: 'Amanda Huggenkis'},
  {title: 'Will you survive the military cadets?', speaker: 'Ben Dover'},
  ])

questions = Question.create([
  {content: 'What is your favourite animal?', a: 'Monkeys', b: 'Turtles', c: 'Elephants', d: 'Lemurs', answer: 'Elephants', quiz_id: 0},
  {content: 'How often do you wash your hands?', a: 'Every 20mins', b: 'Every Hour', c: 'Once a Day', d: 'Never', answer: 'Never', quiz_id: 0},
  {content: 'Is it okay to hug a stranger?', a: 'Definitely', b: 'Sometimes', c: 'Never', d: 'If they are high', answer: 'Definitely', quiz_id: 1},
  {content: 'What is your favourite colour?', a: 'Linen', b: 'Tomato', c: 'Plum', d: 'Fuche', answer: 'Plum', quiz_id: 1},
  {content: 'If Jesus had a Twitter handle, what would it be?', a: 'Big J', b: 'JC2000', c: 'JC in the House', d: 'Son of God MF', answer: 'Big J', quiz_id: 2},
  {content: 'Ants, bees, beetles or mosquitos?', a: 'Ants', b: 'Bees', c: 'Beetles', d: 'Mosquitos', answer: 'Bees', quiz_id: 2},
  {content: 'If alcohol was never invented, what would you drink instead?', a: 'Water', b: 'Coke', c: 'Tomato Soup', d: 'Lemon Juice', answer: 'Water', quiz_id: 3},
  {content: 'What Olympic event would you most likely partake in?', a: 'Fencing', b: 'Twirling', c: 'Trampolining', d: 'Power-walking', answer: 'Twirling', quiz_id: 3},
  {content: 'If you had a son named Greg, what would you name your daughter?', a: 'Sam', b: 'Pat', c: 'Nic', d: 'Val', answer: 'Val', quiz_id: 4},
  {content: 'What shape should eggs be?', a: 'Cubes', b: 'Perfect Spheres', c: 'Pyramids', d: 'Star-shaped', answer: 'Cubes', quiz_id: 4},
  ]);
