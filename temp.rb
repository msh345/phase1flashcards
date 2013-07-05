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

test = Model.new('words.csv')
test.cards
p test.cards[0][:word]
p test.cards[0][:definition]
