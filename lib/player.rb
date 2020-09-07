require_relative './modules/validation'

class Player
  include Validation

  attr_reader :name, :sign

  def initialize(name, sign)
    @name = name
    @sign = sign
  end

  def make_move(choosed_nums)
    puts "#{@name} it's your turn, please choose a number between 1 to 9"
    validate_move(gets.chomp.strip, choosed_nums)
  end
end
