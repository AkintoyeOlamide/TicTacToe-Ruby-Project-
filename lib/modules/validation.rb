module Validation
  def validate_name(name)
    while name.length < 3
      p 'name is too short,try again'
      name = gets.chomp
    end
    name
  end

  def validate_move(num, choosed_nums)
    while num.to_i < 1 || num.to_i > 9 || choosed_nums.include?(num)

      if choosed_nums.include?(num)
        p "#{num} is already taken, please choose another number"
      else
        p 'not a valid number, please choose a number between 1 to 9'
      end

      num = gets.chomp.strip
    end

    choosed_nums << num
    num
  end
end
