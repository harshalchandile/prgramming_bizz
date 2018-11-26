def palindrome(str, k)

  str = str
  k_cuts = k   
  k_cuts = str.size if k_cuts == -1
  
  start_position = 0
  
  n = str.size / k_cuts
  str.size%k_cuts == 0 ? n = n : n = n+1
  n = 1 if k_cuts == -1  

  while n != 0
    n -= 1
    str1 = str.slice(start_position, k_cuts)
    start_position = start_position + k_cuts
     
    if str1 == str1.reverse
      puts "#{str1} is palindrome"
    else
      puts "#{str1} is Not palindrome"
    end
  end
end

puts "Enter Main string"
str = gets.chomp!

puts "Enter K size to cut in K size of strings and find palindrome or -1 for whole string"
k = gets.to_i

palindrome(str, k)
