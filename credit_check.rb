## from the right most digit moving left, doubling the value of every other digit

card_number = ("5107276247313577")
sum  = 0

acc_num = card_number.split('').map { |s| s.to_i }
print acc_num

digits = []
doubling = acc_num.reverse.each_slice(2) do |n|
  digits << (n.last * 2)
  digits << n.first
end
puts digits


## if the result of the doubling operation produces an integer when split is > = 10 then add the split digits together

digits.each do |n|
  digits_string = n.to_s
    if digits_string.length == 2
      temp = digits_string.split('')
      sum +=  temp.first.to_i + temp.last.to_i
    else
      sum += digits_string.to_i
    end
  end


## add the sum of all the digits, if the result is %10 == 0, then the number is valid

valid = false
if sum % 10 == 0
  valid = true
  puts "Valid card"
else
  puts "Invalid card"
end
