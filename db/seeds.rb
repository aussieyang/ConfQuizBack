# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

quizzes = Quiz.create([
  {title: 'How do you brush your teeth?', speaker: 'Yang', enabled: false},
  {title: 'Why should we change underwear?', speaker: 'Mahendra', enabled: false},
  {title: 'Do sharks have nightmares?', speaker: 'Josh', enabled: false},
  {title: 'Will you survive the military cadets?', speaker: 'JB', enabled: false},
  {title: 'How much wood could a woodchuck chuck?', speaker: 'Luke', enabled: false},
  {title: 'Why do cats purr?', speaker: 'Locky', enabled: false},
  ]);

questions = Question.create([
  # Yang to make his questions with id 1
  {content: 'Is this question binary?', a: 'Yes', b: 'No', c: 'Maybe', d: 'This is not an option', answer: 'No', quiz_id: 1},
  {content: "What colour is Boole's moustache?", a: 'Black', b: 'White', c: 'Grey', d: 'He has none', answer: 'He has none', quiz_id: 1},
  {content: 'Fight or Flight?', a: 'Fight', b: 'Flight', c: 'Cry', d: 'Give up', answer: 'Cry', quiz_id: 1},
  {content: 'How likely is it that you get 2 tails in a row?', a: '50%', b: '20%', c: '15%', d: '25%', answer: '25%', quiz_id: 1},
  {content: 'Cake or Death?', a: 'Cake', b: 'Death', c: 'Arrrgh!!', d: 'False dilemma!', answer: 'Cake', quiz_id: 1},

  # Josh 3
  {content: 'Most important thing in your CV?', a: 'Content', b: 'Layout', c: 'Style', d: 'Skills Table', answer: 'Skills Table', quiz_id: 3},
  {content: 'Pick what you shouldnt tell recruiters', a: 'Where you are interviewing', b: 'How many places you are interviewing at', c: 'If you have applied at a company', d: 'If you have reservations about an organisation', answer: 'Where you are interviewing', quiz_id: 3},
  {content: 'Best footbal team in the world?', a: 'Barcelona', b: 'Real Madrid', c: 'Leeds United', d: 'Bayern Munich', answer: 'Leeds United', quiz_id: 3},
  {content: 'First thing to do if you want to apply for a job?', a: 'Email your CV directly', b: 'Apply through job board', c: 'Add hiring manager on LI', d: 'Call the HR department', answer: 'Call the HR department', quiz_id: 3},

  # jb 4
  {content: 'JB looks most like which animal?', a: 'Lemur', b: 'Goat', c: 'Aye-Aye', d: 'Sloth', answer: 'Aye-Aye', quiz_id: 4},
  {content: 'JBs penis size', a: 'Miniscule', b: 'Tiny', c: 'Pathetic', d: 'Embarresing', answer: 'Pathetic', quiz_id: 4},
  {content: 'JB is most like which serial killer?', a: 'Charles Manson', b: 'Dr Harold Shipman', c: 'Peter Sutcliffe', d: 'Jack the Ripper', answer: 'Dr Harold Shimpan', quiz_id: 4},
  {content: 'Which Olympic event would JB be best at?', a: 'Synchronised Swimming', b: 'Twirling', c: 'Curling', d: 'Power-walking', answer: 'Twirling', quiz_id: 4},
  {content: 'Rate my speech', a: 'Bollocks', b: 'Dog shit', c: 'I think JB has downs', d: 'I would rather poke my eyes out rather than listen again', answer: 'I think JB has downs', quiz_id: 4},

  # Mahendra 2

  {content: 'If Jesus had a Twitter handle, what would it be?', a: 'Big J', b: 'JC2000', c: 'JC in the House', d: 'Son of God MF', answer: 'Big J', quiz_id: 2},
  {content: 'Ants, bees, beetles or mosquitos?', a: 'Ants', b: 'Bees', c: 'Beetles', d: 'Mosquitos', answer: 'Bees', quiz_id: 2},
  {content: 'If alcohol was never invented, what would you drink instead?', a: 'Water', b: 'Coke', c: 'Tomato Soup', d: 'Lemon Juice', answer: 'Water', quiz_id: 2},
  {content: 'What Olympic event would you most likely partake in?', a: 'Fencing', b: 'Twirling', c: 'Trampolining', d: 'Power-walking', answer: 'Twirling', quiz_id: 2},
  {content: 'If you had a son named Greg, what would you name your daughter?', a: 'Sam', b: 'Pat', c: 'Nic', d: 'Val', answer: 'Val', quiz_id: 2},

  # luke 5

  {content: 'Where did Australia’s first murder duo dump the bodies of five women?', a: 'Toorak', b: 'Truro', c: 'Too Truro', d: 'Prue and Truro', answer: 'Truro', quiz_id: 5},
  {content: 'Who murdered Richard Kelvin?', a: 'Spencer Bevan Von Einem', b: 'Bevan Spencer Von Einem', c: 'Poison Ivy', d: 'Bon Iver', answer: 'Bevan Spencer Von Einem', quiz_id: 5},
  {content: 'Why are there so many murders in Adelaide?', a: 'Because there are too many churches', b: 'Because boat people keep stealing all the jobs', c: 'Because boat people keep stealing all the women', d: 'Because systemic failure of welfare/justice/mental health systems or humanity, or because something else', answer: 'Because systemic failure of welfare/justice/mental health systems or humanity, or because something else', quiz_id: 5},
  {content: 'Why did the Snowtown killers turn to cannibalism?', a: 'Because there is no God, there is only pain and senseless misery', b: 'Because they knew nothing but depravity', c: 'Because food shortages', d: 'Because human flesh it the tastiest flesh. Take me to Adelaide now', answer: 'Because they knew nothing but depravity', quiz_id: 5},

  # Locky 6
  
  {content: 'what is my favourite star wars movie?', a: 'phantom menace', b: 'empire strikes back', c: 'return of the jedi', d: 'new hope', answer: 'empire strikes back', quiz_id: 6},
 {content: 'favourite genre of music?', a: 'techno', b: 'country', c: 'hip hop', d: 'metal', answer: 'techno', quiz_id: 6},
 {content: 'What was the original creative coding project that lead to development of the frameworks?', a: 'photoshop', b: 'nintendo', c: 'iTunes Visualiser', d: 'pong', answer: 'Von Einen', quiz_id: 6},
 {content: 'Which Olympic event would JB be best at?', a: 'Synchronised Swimming', b: 'Twirling', c: 'Curling', d: 'Power-walking', answer: 'Twirling', quiz_id: 6},
 {content: 'what framework was built from this?', a: 'react', b: 'unity', c: 'C++', d: 'Cinder', answer: 'Cinder', quiz_id: 6},

  ]);

users = User.create([
  {name: 'Yang', speaker?: true, password: 'cakepudding', score: 0},
  {name: 'Mahendra', speaker?: true, password: 'cakepudding', score: 0},
  {name: 'Josh', speaker?: true, password: 'cakepudding', score: 0},
  {name: 'JB', speaker?: true, password: 'cakepudding', score: 0},
  {name: 'Luke', speaker?: true, password: 'cakepudding', score: 0},
  {name: 'Locky', speaker?: true, password: 'cakepudding', score: 0},
  {name: 'Bridget Boone', speaker?: false, password: 'cakepudding', score: 0},
  {name: 'Charlie Crooke', speaker?: false, password: 'cakepudding', score: 0},
  {name: 'Dorothy Ding', speaker?: false, password: 'cakepudding', score: 0},
  {name: 'Eliot Ellingsworth', speaker?: false, password: 'cakepudding', score: 0},
  {name: 'Francis Freud', speaker?: false, password: 'cakepudding', score: 0},
  {name: 'Harry Hills', speaker?: false, password: 'cakepudding', score: 0},
  ]);
