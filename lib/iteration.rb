def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  array = []
  src.size.times do |index|
        array << "I love #{src[index][0]} and #{src[index][1]} on my pizza"
  end
  array
end #join_ingredients



def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  
  array = []
  max = 0
  src.size.times do |index|
        max = src[index].max
        array << max
  end #TIMES
  array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  total = 0
  src.size.times do |i|
    if ((src[i][0]) % 2 == 0) #if 1st element is even
        0.upto(1) do |j|
          if ((src[i][1] % 2) == 0) #check the 2nd one
              total += src[i][j]
          end
        end
    end
  end
  return total
end
