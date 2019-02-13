require "rails_helper"

RSpec.describe Student, type: :model do

  ## BEGIN TESTS FOR CREATING STUDENTS AND THEIR INFO
 it "has a first_name" do
   harry = Student.create(first_name: "Harry", last_name: "Potter", username: "theboywholived", grad_year: 2018, password: "acidpops")
   ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
   expect(ron.first_name).to eq("Ron")
 end

 it "has a last_name" do
   harry = Student.create(first_name: "Harry", last_name: "Potter", username: "theboywholived", grad_year: 2018, password: "acidpops")
   ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
   expect(ron.last_name).to eq("Weasley")
 end

 it "has a full_name" do
   harry = Student.create(first_name: "Harry", last_name: "Potter", username: "theboywholived", grad_year: 2018, password: "acidpops")
   ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
   expect(ron.full_name).to eq("Ron Weasley")
 end


 it "has a username" do
   harry = Student.create(first_name: "Harry", last_name: "Potter", username: "theboywholived", grad_year: 2018, password: "acidpops")
   ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
   expect(ron.username).to eq("bigred94")
 end

 it "has a grad_year" do
   harry = Student.create(first_name: "Harry", last_name: "Potter", username: "theboywholived", grad_year: 2018, password: "acidpops")
   ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
   expect(ron.grad_year).to eq(2018)
 end

 it "has a password" do
   harry = Student.create(first_name: "Harry", last_name: "Potter", username: "theboywholived", grad_year: 2018, password: "acidpops")
   ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
   expect(ron.password).to eq("acidpops")
end
## END TESTS FOR CREATING STUDENTS AND THEIR INFO

## BEGIN TESTS FOR STUDENT INFO PRESENCE VALIDATION

  it "does not allow a student without a first name" do
    ron = Student.create(last_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
    expect(ron).to be_invalid
  end

  it "does not allow a student without a last name" do
    ron = Student.create(first_name: "Ron", username: "bigred94", grad_year: 2018, password: "acidpops")
    expect(ron).to be_invalid
  end

  it "does not allow a student without a grad_year" do
    ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", password: "acidpops")
    expect(ron).to be_invalid
  end

  it "does not allow a student without a password" do
    ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94")
    expect(ron).to be_invalid
  end


  it "does not allow a student without a last name" do
    ron = Student.create(first_name: "Ron", username: "bigred94", grad_year: 2018, password: "acidpops")
    expect(ron).to be_invalid
  end

  it "does not allow a student without a grad_year" do
    ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94", password: "acidpops")
    expect(ron).to be_invalid
  end

  it "does not allow a student without a password" do
    ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "bigred94")
    expect(ron).to be_invalid
  end

  ## END TESTS FOR STUDENT INFO PRESENCE VALIDATION
  ## BEGIN TESTS FOR STUDENT INFO SPECIFIC VALIDATION

  it "does not allow a first name greater than 15 characters" do
    ron = Student.create(first_name: "TheGreatRonWeasleyIsHere", last_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
    expect(ron).to be_invalid
  end

  it "does not allow a last name greater than 15 characters" do
    ron = Student.create(last_name: "TheGreatRonWeasleyIsHereTESTYEST", first_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
    expect(ron).to be_invalid
  end

  it "does not allow a username greater than 15 characters" do
    ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "TheGreatRonWeasleyIsHere", grad_year: 2018, password: "acidpops")
    expect(ron).to be_invalid
  end


  it "does not allow a first name to have numbers or special characters" do
    ron = Student.create(first_name: "R0n", last_name: "Weasley", username: "bigred94", grad_year: 2018, password: "acidpops")
    expect(ron).to be_invalid
  end

  it "does not allow a last name to have numbers or special characters except hyphens" do
    ron = Student.create(first_name: "Ron", last_name: "Weasley-Jones", username: "bigred94", grad_year: 2018, password: "acidpops")
    harry = Student.create(first_name: "Harry", last_name: "Potter43", username: "bigred94", grad_year: 2018, password: "acidpops")
    doug = Student.create(first_name: "Doug", last_name: "@doug", username: "bigred94", grad_year: 2018, password: "acidpops")

    expect(ron).to be_valid
    expect(harry).to be_invalid
    expect(doug).to be_invalid
  end

  it "does not allow a username greater than 15 characters" do
    ron = Student.create(first_name: "Ron", last_name: "Weasley", username: "TheGreatRonWeasleyIsHere", grad_year: 2018, password: "acidpops")
    expect(ron).to be_invalid
  end



end
