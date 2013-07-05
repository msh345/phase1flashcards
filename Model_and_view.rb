require 'csv'

# class Flashcards
# end

class Model
  attr_reader :cards

  def initialize(csv_file)
    @csv_file = csv_file
    @cards = []
    CSV.foreach(@csv_file,{:headers => true, :header_converters => :symbol}) { |row| @cards << row }
    @cards
  end

end


class View
  attr_reader :welcome_message, :random_definition, :response, :game_over
  def initialize
  end

  def welcome_message
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition.  Ready?  Go!"
  end

  def random_definition(hash) #{:word => "right", :definition => "Opposite of left"}
    puts "Definition"
    hash[:definition]
  end

  def response(boolean) #if true
    puts "Guess:" #need to input user response within string
    boolean = true ? "Correct!" : "Incorrect! Try again."
  end

  def game_over
    puts "No more cards in the deck. Thanks for playing."
end


test = View.new
p test.response(true)
p test.random_definition({:word => "right", :definition => "Opposite of left"})



# test = Model.new('words.csv')
# test.cards
# p test.cards[0][:word]
# p test.cards[0][:definition]
