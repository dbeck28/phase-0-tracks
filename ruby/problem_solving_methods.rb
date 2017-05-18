#Release 0

arr = [2,4,5,6,7,9]

def search_array(arr,num)
  counter = 0
    arr.each do |value|
      if value == num;
        print counter
      end
    counter += 1
  end
end

search_array(arr,9)

# We want to define a method that takes one argument that is a number
# Starting with zero, we want to add each number to the next an

def fibonacci(num)
  fibarr = [0,1]
  counter = 0
  until counter == num - 2
    fibarr << (fibarr[-1] + fibarr[-2])
    counter += 1
  end
  print fibarr
end

fibonacci(100)

array = [4,5,6,2,5,9,11]

def bubble_sort(array) #Define the method
  n = array.length # A counter for the amount of times to run

  loop do
    swapped = false #before the values have been compared

    (n-1).times do |i|
      if array[i] > array[i+1] #compare the value at index i with the one next to it, if it is greater they will swap places
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped #if no swaps were made, end loop
  end

  array #return the array
end

p bubble_sort(array)

