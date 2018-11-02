require 'spec_helper'

describe 'Die Class' do
  it "exists" do
    expect(Die).to be
  end

  it "responds to a reader called `pips`" do
    d = Die.new
    expect { d.pips }.not_to raise_error
  end

  it "is initialized, by default to have 6 pips" do
    d = Die.new
    expect(d.pips).to eq(6)
  end

  it "responds to a method called `throw`" do
    d = Die.new
    expect { d.roll }.not_to raise_error
  end
end

describe 'DieRoller' do
  it "exists" do
    expect(DiceRoller).to be
  end

  it "is initialized with no arguments to have a single, regular, die"  do
    dr = DiceRoller.new
    expect(dr.dice.length).to eq(1)
  end

  it "is initialized with die count of 2, has 2 die"  do
    dr = DiceRoller.new(2)
    expect(dr.dice.length).to eq(2)
  end

  it "is initialized with die count of 2, with pips set to 4 sums to 8"  do
    dr = DiceRoller.new(2, 4)
    expect(dr.dice.map(&:pips).reduce(&:+)).to eq(8)
  end

  context "#generate_set" do
    it "generates an `Array` of n-many rolled Die" do
      dr = DiceRoller.new(2)
      die_set = dr.generate_set
      expect(die_set.length).to eq(2)
    end
  end

end

  #it 'can be used to confirm if an instance method returns the expected results' do
    #example = Dice.new
    #expect(example.instance_test).to eq('seriously')
  #end

  #it 'can be used to match strings' do
    #expect('There are two bears in a tree').to match(/bears in a tree/)
    #expect("They're both on the same limb").to include('limb')
  #end

  #it 'can check types' do
    #example = ExampleClass.new
    #expect(example).to be_instance_of(ExampleClass)

    #example_array = [1, 2, 3]
    #expect(example_array).to be_kind_of(Array)
  #end


describe 'roll_prompt' do
  #it 'has a roll_prompt method' do
    #expect { roll_prompt(10) }.not_to raise_error
  #end

  #it 'it returns a message if the number of sides is not 3 up to 100' do
    #expect(roll_prompt(1)).to match('Oops! This die does not exist. Please enter a number between 3 and 100')
    #expect(roll_prompt(2)).to match('Oops! This die does not exist. Please enter a number between 3 and 100')
    #expect(roll_prompt(101)).to match('Oops! This die does not exist. Please enter a number between 3 and 100')
  #end

  #it 'only accepts values of 3 up to 100' do
    #expect(roll_prompt(100)).to be_between(3, 100)
  #end

  #it 'prints a message when rolling a die with 3 to 100 sides' do
    #expect{ roll_prompt(3) }.to output("We're rolling a 3 sided die!").to_stdout
    #expect{ roll_prompt(100) }.to output("We're rolling a 100 sided die!").to_stdout
  #end
#end

#describe 'throw_variable_die' do
  #it 'has a throw_variable_die method' do
    #expect { throw_variable_die(10) }.not_to raise_error
  #end

  #it 'returns a value that is between 1 and the number of sides' do
    #expect(throw_variable_die(3)).to be_between(1, 3)
    #expect(throw_variable_die(10)).to be_between(1, 10)
  #end
#end

#describe 'generate_hash_set' do
  #it 'has a generate_hash_set method' do
    #expect { generate_hash_set(5) }.not_to raise_error
  #end

  #it 'returns a hash' do
    #expect(generate_hash_set(5)).to be_kind_of(Hash)
  #end

  #it 'returns a hash where the key is the index and the value is the result rolled by the die' do
    #expect(generate_hash_set(5)).to have_key(1)
    #expect(generate_hash_set(5)).to have_key(2)
    #expect(generate_hash_set(5)).to have_key(3)
    #expect(generate_hash_set(5)).to have_key(4)
    #expect(generate_hash_set(5)).to have_key(5)
  #end
#end

#describe 'lucky_number_seven' do
  #it 'has a lucky_number_seven method' do
    #expect { lucky_number_seven({}) }.not_to raise_error
  #end

  #it 'returns a hash regardless of the outcome' do
    #unlucky_hash = { 1 => 4, 2 => 5, 3 => 8}
    #lucky_hash = { 1 => 4, 2 => 7, 3 => 5}
    #luckier_hash = { 1 => 4, 2 => 7, 3 => 7}
    #expect(lucky_number_seven(unlucky_hash)).to be_kind_of(Hash)
    #expect(lucky_number_seven(lucky_hash)).to be_kind_of(Hash)
    #expect(lucky_number_seven(luckier_hash)).to be_kind_of(Hash)
  #end

  #it 'prints "You\'re pretty lucky!" when a sum of 7 is rolled' do
    #lucky_hash = { 1 => 4, 2 => 2, 3 => 1}
    #expect{ lucky_number_seven(lucky_hash) }.to output("You're pretty lucky!").to_stdout
  #end

  #it 'prints "Wow, you\'re on a roll!" when the number 7 is rolled 2 or more times' do
    #luckier_hash = { 1 => 4, 2 => 7, 3 => 7}
    #expect{ lucky_number_seven(luckier_hash) }.to output("Wow, you're on a roll!").to_stdout
  #end

  #it 'prints "No such luck this time!" when a 7 is not rolled' do
    #unlucky_hash = { 1 => 4, 2 => 5, 3 => 8}
    #expect{ lucky_number_seven(unlucky_hash) }.to output("No such luck this time!").to_stdout
  #end
end
