/*
Smallest subarray with sum greater than a given value

Given an array of integers and a number x, find the smallest subarray with sum greater than the given value. 

Examples:
arr[] = {1, 4, 45, 6, 0, 19}
   x  =  51
Output: 3
Minimum length subarray is {4, 45, 6}

arr[] = {1, 10, 5, 2, 7}
   x  = 9
Output: 1
Minimum length subarray is {10}
*/


array = [1, 4, 45, 6, 0, 19]
x = 51
array1 = array.map{|m| if m <= 51 } // [1, 4, 45, 6, 0, 19]

sum = 0
count = 0
array1.sort.each do | item |
    if sum < x
        sum = sum + item
        count = count + 1
    else 
        break
    end
end

count


