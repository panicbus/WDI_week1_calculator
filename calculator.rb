# # # #Homework for September 25, 2013

# # # ##Calculator 1
# # # Create a command line calculator. It should have a basic and advanced mode.

# # # * basic calculator (+, -, *, /)
# # # * advanced calculator (exponents, square root)

# # # * For a basic calculator, press 1.
# # # * For an advanced calculator, press 2. To quit, press Q.
# # # * For calculators, first enter type of calculation, then enter 2 numbers.

# # # Create methods for each operation, and each one to show and interact with a text menu.

# # # ##Calculator 2

# # # Add a trip calculator to your program. Ask the user (politely) for four inputs:

# # # **Distance** – how far will you drive?
# # # **MPG** – what is the fuel efficiency of the car?
# # # **$PG** – how much does gas cost per gallon?
# # # **Speed** – how fast will you drive?

# # # Your output is a string: “Your trip will take 3.5 hours and cost $255.33.”

# # # Add this as a menu choice.

# # # ##Bonus

# # # Add two more sets of calculators. These should be accessible from your menu method that you created in Calculator 1.

# # # * [Mortgage:](http://www.wikihow.com/Sample/Mortgage-Payment)
# # #   * Calculate the monthly payment when given the other variables as input.
# # #    **Inputs:** principal, yearly interest rate, number of payments
# # #         **Output:** Monthly mortage payment

# # # * [BMI:](http://www.wikihow.com/Image:BMI.jpg)
# # #   * Calculate the BMI when given the height and weight.
# # #         **Input:** weight, height
# # #         **Output:** BMI

  def basic_calc(type_of_calculation, first_value, second_value)
    if type_of_calculation == "add"
       sum = first_value + second_value
       puts "The sum is #{sum}."
    end
    if type_of_calculation == "subtract"
      difference = first_value - second_value
      puts "The difference is #{difference}."
    end
    if type_of_calculation == "multiply"
      product = first_value * second_value
      puts "The product is #{product}."
    end
    if type_of_calculation == "divide"
      quotient = first_value / second_value
      puts "Your quotient is #{quotient}."
    end
    puts "Would you like to calculate again? (y/n)"
      again = gets.chomp.downcase
      if again == "y"
        intro()
      end
      if again == "n"
        puts "Thanks for calculating!"
      end
  end


  def adv_calc(type_of_calculation, first_value, second_value)
    if type_of_calculation == "square"
     squared = first_value ** 2
      puts "Your answer is #{squared}."
      intro()
    end
    if type_of_calculation == "exponent"
     exponential = first_value ** second_value
    puts "Your answer is #{exponential}."
    intro()
    end
  end

def trip_calc(distance, mpg, ppg, speed)
    hours = distance / speed
    cost = ppg * mpg
    puts "Your trip will take #{hours.round(1)} hours and cost #{cost.round(2)}."
    intro()
  end

def intro()
  puts "What calculator would you like to use?\n"
  puts "For basic, press 1.\n"
  puts "For advanced, press 2.\n"
  puts "For trip calculator, press 3.\n"
  puts "To quit, press Q."
  calc_choice = gets.chomp.upcase.to_s


if calc_choice == "1"
  puts "Would you like to add, subtract, multiply or divide?"
  type_of_calculation = gets.chomp.downcase
  puts "What's your first value?"
  first_value = gets.chomp.to_i
  puts "What's your second value?"
  second_value = gets.chomp.to_i

  basic_calc(type_of_calculation,first_value,second_value)
end


if calc_choice == "2"
  puts "Do you want to square something or find an exponent?(Type 'square' or 'exponent'.)"
  type_of_calculation = gets.chomp.downcase

  if type_of_calculation == "square"
    puts "what do you want squared?"
    first_value = gets.chomp.to_i
  end


  if type_of_calculation  == "exponent"
    puts "What's your first value?"
    first_value = gets.chomp.to_i
    puts "What's your exponent value?"
    second_value = gets.chomp.to_i
  end

  adv_calc(type_of_calculation,first_value,second_value)
end

if calc_choice == "3"
  puts "I need some info to calculate your trip. Just type numbers please.\n"
  puts "**Distance** – how far will you drive?"
    distance = gets.chomp.to_f
  puts "**MPG** – what is the fuel efficiency of the car?"
    mpg = gets.chomp.to_f
  puts "**$PG** – how much does gas cost per gallon?"
    ppg = gets.chomp.to_f
  puts "**Speed** – how fast will you drive on average?"
    speed = gets.chomp.to_f

  trip_calc(distance,mpg,ppg,speed)
end

if calc_choice != "1" "2" "3"
  puts "Try again."
  intro()
end

if calc_choice == "Q"
  puts "\nThanks for calculating!"
end


end
intro()
# I'll add the mortgage and BMI calculators at at some point ^NC