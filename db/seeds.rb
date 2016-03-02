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
  {title: 'How much wood could a woodchuck chuck?', speaker: 'Jerry Canne'},
  ]);

questions = Question.create([
  {content: 'What is your favourite animal?', a: 'Monkeys', b: 'Turtles', c: 'Elephants', d: 'Lemurs', answer: 'Elephants', quiz_id: 5},
  {content: 'How often do you wash your hands?', a: 'Every 20mins', b: 'Every Hour', c: 'Once a Day', d: 'Never', answer: 'Never', quiz_id: 5},
  {content: 'Is it okay to hug a stranger?', a: 'Definitely', b: 'Sometimes', c: 'Never', d: 'If they are high', answer: 'Definitely', quiz_id: 1},
  {content: 'What is your favourite colour?', a: 'Linen', b: 'Tomato', c: 'Plum', d: 'Fuche', answer: 'Plum', quiz_id: 1},
  {content: 'If Jesus had a Twitter handle, what would it be?', a: 'Big J', b: 'JC2000', c: 'JC in the House', d: 'Son of God MF', answer: 'Big J', quiz_id: 2},
  {content: 'Ants, bees, beetles or mosquitos?', a: 'Ants', b: 'Bees', c: 'Beetles', d: 'Mosquitos', answer: 'Bees', quiz_id: 2},
  ]);

users = User.create([
  {name: 'Greg Gremlin', speaker?: false, password: 'cakepudding'},
  {name: 'Tommy Troll', speaker?: false, password: 'cakepudding'},
  {name: 'Buttface McGee', speaker?: true, password: 'cakepudding'},
  {name: 'Danny Distressed', speaker?: true, password: 'cakepudding'},
  {name: 'Amanda Huggenkis', speaker?: true, password: 'cakepudding'},
  {name: 'Ben Dover', speaker?: true, password: 'cakepudding'},
  {name: 'Jerry Canne', speaker?: true, password: 'cakepudding'},
  {name: 'Alan Ackman', speaker?: false, password: 'cakepudding'},
  {name: 'Bridget Boone', speaker?: false, password: 'cakepudding'},
  {name: 'Charlie Crooke', speaker?: false, password: 'cakepudding'},
  {name: 'Dorothy Ding', speaker?: false, password: 'cakepudding'},
  {name: 'Eliot Ellingsworth', speaker?: false, password: 'cakepudding'},
  {name: 'Francis Freud', speaker?: false, password: 'cakepudding'},
  {name: 'Harry Hills', speaker?: false, password: 'cakepudding'},
  ]);
