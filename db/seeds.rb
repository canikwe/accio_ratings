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

harry = Student.create(first_name: "Harry", last_name: "Potter", username: "theboywholived", grad_year: 2018, password: "acidpops")
ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
fred = Student.create(first_name: "Fred", last_name: "Weasley", username: "fred", grad_year: 2015, password: "acidpops")
george = Student.create(first_name: "George", last_name: "Weasley", username: "george", grad_year: 2015, password: "acidpops")
hermione = Student.create(first_name: "Hermione", last_name: "Granger", username: "smarty", grad_year: 2018, password: "acidpops")
ginny = Student.create(first_name: "Ginny", last_name: "Weasley", username: "littlered94", grad_year: 2019, password: "acidpops")


flitwick = Instructor.create(name: "Professor Flitwick")
sev = Instructor.create(name: "Professor Snape")
min = Instructor.create(name: "Professor McGonagall")
albus = Instructor.create(name: "Professor Dumbledore")
hagrid = Instructor.create(name: "Professor Hagrid")
trel = Instructor.create(name: "Professor Trelawney")
sprout = Instructor.create(name: "Professor Sprout")
lupin = Instructor.create(name: "Professor Lupin")

pot = Subject.create(name: "Intro to Potions")
charm = Subject.create(name: "Advanced Charms")
trans = Subject.create(name: "Transfiguration")
doda = Subject.create(name: "Defense Against the Dark Arts")
herb = Subject.create(name: "Herbology")
div = Subject.create(name: "Divination")
comc = Subject.create(name: "Care of Magical Creatures")



pot_klass = Klass.create(year: 2018, subject: pot, instructor: sev)
charm_klass = Klass.create(year: 2017, subject: charm, instructor: flitwick)
trans_klass = Klass.create(year: 2015, subject: trans, instructor: min)
doda_klass = Klass.create(year: 2017, subject: doda, instructor: lupin)
herb_klass = Klass.create(year: 2018, subject: herb, instructor: sprout)
div_klass = Klass.create(year: 2017, subject: div, instructor: trel)
comc_klass = Klass.create(year: 2017, subject: comc, instructor: hagrid)
pot_klass1 = Klass.create(year: 2010, subject: pot, instructor: sev)
charm_klass1 = Klass.create(year: 2010, subject: charm, instructor: flitwick)
trans_klass1 = Klass.create(year: 2010, subject: trans, instructor: min)
doda_klass1 = Klass.create(year: 2010, subject: doda, instructor: lupin)
herb_klass1 = Klass.create(year: 2010, subject: herb, instructor: sprout)
div_klass1 = Klass.create(year: 2010, subject: div, instructor: trel)
comc_klass1 = Klass.create(year: 2010, subject: comc, instructor: hagrid)
pot_klass2 = Klass.create(year: 2013, subject: pot, instructor: sev)
charm_klass2 = Klass.create(year: 2013, subject: charm, instructor: flitwick)
trans_klass2 = Klass.create(year: 2013, subject: trans, instructor: min)
doda_klass2 = Klass.create(year: 2013, subject: doda, instructor: lupin)
herb_klass2 = Klass.create(year: 2013, subject: herb, instructor: sprout)
div_klass2 = Klass.create(year: 2013, subject: div, instructor: trel)
comc_klass2 = Klass.create(year: 2013, subject: comc, instructor: hagrid)






Review.create(title: "Great class!", overall: 4, difficulty: 4, intrigue: 5, recommendation: 5, content: "Definitely take this class", student: harry, klass: charm_klass)
Review.create(title: "Could Have Been Better", overall: 3, difficulty: 3, intrigue: 3, recommendation: 2, content: "I really enjoyed this", student: harry, klass: charm_klass1)
Review.create(title: "Terrible", overall: 1, difficulty: 5, intrigue: 3, recommendation: 5, content: "He reminded me of my dad", student: harry, klass: pot_klass)
Review.create(title: "Simply the Worst", overall: 1, difficulty: 5, intrigue: 1, recommendation: 1, content: "Made fun of awesome robes.", student: harry, klass: pot_klass1)

Review.create(title: "Great class!", overall: 4, difficulty: 2, intrigue: 5, recommendation: 5, content: "I learned so much magic", student: ron, klass: charm_klass)
Review.create(title: "Could Have Been Better", overall: 5, difficulty: 5, intrigue: 5, recommendation: 2, content: "I felt like the werewolf was too much", student: ron, klass: charm_klass1)
Review.create(title: "Terrible", overall: 2, difficulty: 3, intrigue: 2, recommendation: 2, content: "Brilliant professor--def take this one!", student: ron, klass: trans_klass)
Review.create(title: "Simply the Worst", overall: 2, difficulty: 5, intrigue: 2, recommendation: 3, content: "Made fun of my shabby robes.", student: ron, klass: herb_klass2)

Review.create(title: "Great class!", overall: 4, difficulty: 4, intrigue: 5, recommendation: 5, content: "Bad class__ dont take", student: hermione, klass: charm_klass)
Review.create(title: "Could Have Been Better", overall: 3, difficulty: 5, intrigue: 3, recommendation: 2, content: "The tests were way too hard and he did not serve snacks.", student: hermione, klass: charm_klass2)
Review.create(title: "Terrible", overall: 3, difficulty: 5, intrigue: 3, recommendation: 2, content: "He loves the subject", student: hermione, klass: doda_klass)
Review.create(title: "Simply the Worst", overall: 2, difficulty: 5, intrigue: 1, recommendation: 3, content: "I hated this class", student: hermione, klass: comc_klass)

Review.create(title: "Great class!", overall: 4, difficulty: 4, intrigue: 3, recommendation: 5, content: "He turned me into a pumpkin!", student: george, klass: comc_klass2)
Review.create(title: "Could Have Been Better", overall: 5, difficulty: 5, intrigue: 5, recommendation: 2, content: "I never even went", student: george, klass: charm_klass2)
Review.create(title: "Terrible", overall: 1, difficulty: 5, intrigue: 5, recommendation: 2, content: "He kept talking about how much he hated my dad", student: george, klass: div_klass1)
Review.create(title: "Simply the Worst", overall: 1, difficulty: 5, intrigue: 1, recommendation: 3, content: "Best class ever", student: george, klass: div_klass)

Review.create(title: "Great class!", overall: 4, difficulty: 4, intrigue: 5, recommendation: 5, content: "He turned me into a pumpkin!", student: fred, klass: doda_klass)
Review.create(title: "Could Have Been Better", overall: 5, difficulty: 5, intrigue: 5, recommendation: 2, content: "Snacks were good ", student: fred, klass: doda_klass1)
Review.create(title: "Terrible", overall: 3, difficulty: 5, intrigue: 5, recommendation: 2, content: "What a cruddy class", student: fred, klass: pot_klass)
Review.create(title: "Simply the Worst", overall: 3, difficulty: 5, intrigue: 3, recommendation: 1, content: "Broke my wand in this class",  student: fred, klass: pot_klass1)

Review.create(title: "Great class!", overall: 4, difficulty: 4, intrigue: 5, recommendation: 5, content: "What a hoot!", student: ginny, klass: herb_klass)
Review.create(title: "Could Have Been Better", overall: 5, difficulty: 5, intrigue: 3, recommendation: 2, content: "Not a hoot!", student: ginny, klass: herb_klass1)
Review.create(title: "Terrible", overall: 1, difficulty: 5, intrigue: 3, recommendation: 2, content: "No hoots given", student: ginny, klass: pot_klass)
Review.create(title: "Simply the Worst", overall: 1, difficulty: 5, intrigue: 1, recommendation: 1, content: "The powerpoints were magical", student: ginny, klass: trans_klass)
