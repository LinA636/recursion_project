def fibs_iteration(num)
  if num == 0
    return 0
  elsif num == 1
    return [0,1]
  else
    fibs = [0, 1]
    for i in 2..num do
      fibs.push(fibs[i-1]+fibs[i-2])
    end
    fibs
  end
end

def fibs_rec(num)
  #arr[num] = num == 0 ? 0: num == 1 ? 1: fibs_rec(arr, num-1)+fibs_rec(arr, num-2)
  return [0] if num == 0
  return [0,1] if num == 1

  array = fibs_rec(num-1)
  array << array[-2] + array[-1]
end

p fibs_iteration(8)
puts

p fibs_rec(8)
