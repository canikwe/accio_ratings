# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Instructor.destroy_all
Subject.destroy_all
Klass.destroy_all
Review.destroy_all

harry = Student.create(first_name: "Harry", last_name: "Potter", username: "theboywholived", grad_year: 1998, password: "acidpops")
ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", grad_year: 1998, password: "acidpops")
fred = Student.create(first_name: "Fred", last_name: "Weasley", username: "fred", grad_year: 1996, password: "acidpops")
george = Student.create(first_name: "George", last_name: "Weasley", username: "george", grad_year: 1996, password: "acidpops")
hermione = Student.create(first_name: "Hermione", last_name: "Granger", username: "smarty", grad_year: 1998, password: "acidpops")
ginny = Student.create(first_name: "Ginny", last_name: "Weasley", username: "littlered94", grad_year: 1999, password: "acidpops")
malfoy = Student.create(first_name: "Draco", last_name: "Malfoy", username: "draco", grad_year: 1998, password: "acidpops")
crabbe = Student.create(first_name: "Vincent", last_name: "Crabbe", username: "crabbe", grad_year: 1998, password: "acidpops")
goyle = Student.create(first_name: "Gregory", last_name: "Goyle", username: "goyle", grad_year: 1996, password: "acidpops")
james = Student.create(first_name: "James", last_name: "Potter", username: "prongs", grad_year: 1990, password: "acidpops")
lily = Student.create(first_name: "Lily", last_name: "Evans", username: "lily", grad_year: 1990, password: "acidpops")
sirius = Student.create(first_name: "Sirius", last_name: "Black", username: "padfoot", grad_year: 1990, password: "acidpops")

flitwick = Instructor.create(name: "Professor Flitwick")
snape = Instructor.create(name: "Professor Snape")
mcgonagall = Instructor.create(name: "Professor McGonagall")
albus = Instructor.create(name: "Professor Dumbledore")
hagrid = Instructor.create(name: "Professor Hagrid")
trelawney = Instructor.create(name: "Professor Trelawney")
sprout = Instructor.create(name: "Professor Sprout")
lupin = Instructor.create(name: "Professor Lupin")
lockhart = Instructor.create(name: "Professor Lockhart")

potions1 = Subject.create(name: "Beginner Potions ")
potions2 = Subject.create(name: "Intermediate Potions")
potions3 = Subject.create(name: "Advanced Potions ")

charms1 = Subject.create(name: "Beginner Charms")
charms2 = Subject.create(name: "Intermediate Charms")
charms3 = Subject.create(name: "Advanced Charms")

transfiguration1 = Subject.create(name: "Beginner Transfiguration ")
transfiguration2 = Subject.create(name: "Intermediate Transfiguration")
transfiguration3 = Subject.create(name: "Advanced Transfiguration ")

doda1 = Subject.create(name: "Beginner DODA")
doda2 = Subject.create(name: "Intermediate DODA")
doda3 = Subject.create(name: "Advanced DODA ")

divination1 = Subject.create(name: "Beginner Divination")
divination2 = Subject.create(name: "Intermediate Divination")
divination3 = Subject.create(name: "Advanced Divination")

comc1 = Subject.create(name: "Beginner COMC")
comc2 = Subject.create(name: "Intermediate COMC")
comc3 = Subject.create(name: "Advanced COMC")

herbology1 = Subject.create(name: "Beginner Herbology")
herbology2 = Subject.create(name: "Intermediate Herbology")
herbology3 = Subject.create(name: "Advanced Herbology")




potionsclass1 = Klass.create(year: 1992, subject:potions1,  instructor: snape)
potionsclass2 = Klass.create(year: 1993, subject:potions1,  instructor: snape)
potionsclass3 = Klass.create(year: 1994, subject:potions1, instructor: snape)
potionsclass4 = Klass.create(year: 1990, subject:potions2, instructor: snape)
potionsclass5 = Klass.create(year: 1992, subject:potions2, instructor: snape)
potionsclass6 = Klass.create(year: 1991, subject:potions3,  instructor: snape)
potionsclass7= Klass.create(year: 1991, subject:potions3, instructor: snape)

charmsclass1 = Klass.create(year: 1992, subject:charms1,  instructor: flitwick)
charmsclass2 = Klass.create(year: 1993, subject:charms1,  instructor: flitwick)
charmsclass3 = Klass.create(year: 1994, subject:charms1, instructor: flitwick)
charmsclass4 = Klass.create(year: 1990, subject:charms2, instructor: albus)
charmsclass5 = Klass.create(year: 1992, subject:charms2, instructor: flitwick)
charmsclass6 = Klass.create(year: 1991, subject:charms3,  instructor: flitwick)
charmsclass7= Klass.create(year: 1991, subject:charms3, instructor: flitwick)

transfigurationclass1 = Klass.create(year: 1992, subject:transfiguration1,  instructor: mcgonagall)
transfigurationclass2 = Klass.create(year: 1993, subject:transfiguration1,  instructor: mcgonagall)
transfigurationclass3 = Klass.create(year: 1994, subject:transfiguration1, instructor: mcgonagall)
transfigurationclass4 = Klass.create(year: 1990, subject:transfiguration2, instructor: albus)
transfigurationclass5 = Klass.create(year: 1992, subject:transfiguration2, instructor: mcgonagall)
transfigurationclass6 = Klass.create(year: 1990, subject:transfiguration3,  instructor: mcgonagall)
transfigurationclass7= Klass.create(year: 1991, subject:transfiguration3, instructor: mcgonagall)


dodaclass1 = Klass.create(year: 1992, subject:doda1,  instructor: lupin)
dodaclass2 = Klass.create(year: 1993, subject:doda1,  instructor: snape)
dodaclass3 = Klass.create(year: 1994, subject:doda1, instructor: snape)
dodaclass4 = Klass.create(year: 1990, subject:doda2, instructor: lockhart)
dodaclass5 = Klass.create(year: 1992, subject:doda2, instructor: lupin)
dodaclass6 = Klass.create(year: 1991, subject:doda3,  instructor: snape)
dodaclass7= Klass.create(year: 1990, subject:doda3, instructor: snape)



comcclass1 = Klass.create(year: 1992, subject:comc1,  instructor: hagrid)
comcclass2 = Klass.create(year: 1993, subject:comc1,  instructor: hagrid)
comcclass3 = Klass.create(year: 1994, subject:comc1, instructor: hagrid)
comcclass4 = Klass.create(year: 1990, subject:comc2, instructor: hagrid)
comcclass5 = Klass.create(year: 1992, subject:comc2, instructor: hagrid)
comcclass6 = Klass.create(year: 1991, subject:comc3,  instructor: hagrid)
comcclass7= Klass.create(year: 1990, subject:comc3, instructor: hagrid)

divinationclass1 = Klass.create(year: 1992, subject:divination1,  instructor: trelawney)
divinationclass2 = Klass.create(year: 1993, subject:divination1,  instructor: trelawney)
divinationclass3 = Klass.create(year: 1994, subject:divination1, instructor: trelawney)
divinationclass4 = Klass.create(year: 1990, subject:divination2, instructor: trelawney)
divinationclass5 = Klass.create(year: 1992, subject:divination2, instructor: trelawney)
divinationclass6 = Klass.create(year: 1991, subject:divination3,  instructor: trelawney)
divinationclass7= Klass.create(year: 1990, subject:divination3, instructor: trelawney)

herbologyclass1 = Klass.create(year: 1992, subject:herbology1,  instructor: sprout)
herbologyclass2 = Klass.create(year: 1993, subject:herbology1,  instructor: sprout)
herbologyclass3 = Klass.create(year: 1994, subject:herbology1, instructor: sprout)
herbologyclass4 = Klass.create(year: 1990, subject:herbology2, instructor: sprout)
herbologyclass5 = Klass.create(year: 1992, subject:herbology2, instructor: sprout)
herbologyclass6 = Klass.create(year: 1991, subject:herbology3,  instructor: sprout)
herbologyclass7= Klass.create(year: 1990, subject:herbology3, instructor: sprout)

Review.create(student: harry, klass: potionsclass1,  overall: 1, difficulty: 4, intrigue: 2, recommendation: 1, title: "Don't take if you aren't in Slytherin!", content: "Snape favors students from his own class...does't teach fairly.")
Review.create(student: harry, klass: potionsclass2,  overall: 1, difficulty: 3, intrigue: 3, recommendation: 1, title: "He hates me", content: "He hated my dad too")
Review.create(student: harry, klass: potionsclass3,  overall: 1, difficulty: 5, intrigue: 2, recommendation: 1, title: "Still hates me", content: "He bullied Neville")
Review.create(student: harry, klass: comcclass1,     overall: 5, difficulty: 2, intrigue: 4, recommendation: 5, title: "Great class!", content: "Hagrid makes things interesting!")

Review.create(student: ron, klass: potionsclass4,          overall: 1, difficulty: 5, intrigue: 1, recommendation: 1, title: "Snape is pure evil", content: "I dont like Snape, but I probably wouldnt do better with any other teacher")
Review.create(student: ron, klass: transfigurationclass1,  overall: 4, difficulty: 4, intrigue: 3, recommendation: 4, title: "A cat??", content: "She didnt teach us to be animagi... bummer")
Review.create(student: fred, klass: transfigurationclass4,  overall: 1, difficulty: 5, intrigue: 2, recommendation: 1, title: "Want to impress friends?", content: "I learned how to turn a teapot into a cat!")
Review.create(student: george, klass: transfigurationclass7,  overall: 5, difficulty: 2, intrigue: 4, recommendation: 5, title: "I am an animagus now", content: "Poof- I am a dog")

Review.create(student: hermione, klass: charmsclass1,  overall: 5, difficulty: 2, intrigue: 5, recommendation: 5, title: "At least we werent expelled", content: "We learned wingardium leviosahhhh")
Review.create(student: hermione, klass: charmsclass2,  overall: 5, difficulty: 2, intrigue: 5, recommendation: 5, title: "Great teacher", content: "Flitwick taught us so well.")
Review.create(student: ginny, klass: comcclass3,  overall: 4, difficulty: 3, intrigue: 5, recommendation:4,  title: "Hargid is great", content: "He loves the subject and it shows!")
Review.create(student: ginny, klass: divinationclass1,     overall: 2, difficulty: 1, intrigue: 3, recommendation: 3, title: "Not sure I believe it", content: "Divination might not be a real thing.")

Review.create(student: malfoy, klass: comcclass2,  overall: 1, difficulty: 5, intrigue: 1, recommendation: 1, title: "I was attacked by a hippogriff", content: "Hagrid is an oaf who shouldnt be teaching.")
Review.create(student: malfoy, klass: herbologyclass3,  overall: 2, difficulty: 2, intrigue: 3, recommendation: 3, title: "Not that interesting of a class", content: "Very boring except the mandrakes")
Review.create(student: crabbe, klass: potionsclass3,  overall: 1, difficulty: 5, intrigue: 1, recommendation: 1, title: "Blrgggg..", content: "Grunnnnt")
Review.create(student: goyle, klass: comcclass1,     overall: 1, difficulty: 5, intrigue: 1, recommendation: 1, title: "Orgh...", content: "Blerghhhh...")

Review.create(student: james, klass: herbologyclass1,  overall: 4, difficulty: 4, intrigue: 2, recommendation: 4, title: "Cant wait to have a son", content: "named Harry")
Review.create(student: lily, klass: potionsclass2,  overall: 1, difficulty: 3, intrigue: 3, recommendation: 1, title: "I also want a son", content: "named Harry")
Review.create(student: sirius, klass: transfigurationclass4,  overall: 1, difficulty: 5, intrigue: 2, recommendation: 1, title: "Where I learned to turn into a dog", content: "Now I'm a dog")
Review.create(student: sirius, klass: comcclass1,     overall: 5, difficulty: 2, intrigue: 4, recommendation: 5, title: "Stole all the dogfood", content: "I was hungry.")
