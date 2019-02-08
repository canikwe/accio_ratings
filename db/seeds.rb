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

harry = Student.create(first_name: "Harry", last_name: "Potter", username: "theboywholived", grad_year: 2018)
ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", grad_year: 2018)

flitwick = Instructor.create(name: "Professor Flitwick")
sev = Instructor.create(name: "Professor Snape")

pot = Subject.create(name: "Intro to Potions")
charm = Subject.create(name: "Advanced Charms")

pot_klass = Klass.create(year: 2018, subject: pot, instructor: sev)
charm_klass = Klass.create(year: 2017, subject: charm, instructor: flitwick)

Review.create(title: "Great class!", overall: 4, difficulty: 4, intrigue: 5, recommendation: 5, content: "He turned me into a pumpkin!", student: harry, klass: charm_klass)
Review.create(title: "Could Have Been Better", overall: 3, difficulty: 5, intrigue: 3, recommendation: 2, content: "The tests were way too hard and he did not serve snacks.", student: ron, klass: charm_klass)
Review.create(title: "Terrible", overall: 1, difficulty: 5, intrigue: 3, recommendation: 2, content: "He kept talking about how much he hated my dad", student: harry, klass: pot_klass)
Review.create(title: "Simply the Worst", overall: 1, difficulty: 5, intrigue: 1, recommendation: 1, content: "Made fun of my shabby robes.", student: ron, klass: pot_klass)
