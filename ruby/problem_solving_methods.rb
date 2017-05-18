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


