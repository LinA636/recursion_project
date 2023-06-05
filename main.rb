def fibs_iteration(num)
  if num == 0
    return 0
  elsif num == 1
    return [0,1]
  else
    fibs = [0, 1]
    for i in 2..num-1 do
      fibs.push(fibs[i-1]+fibs[i-2])
    end
    fibs
  end
end

def fibs_rec(num)
  num == 0 ? 0: num == 1 ? 1: fibs_rec(num-1)+fibs_rec(num-2)
end

p fibs_iteration(8)
puts
arr = []
arr.push(fibs_rec(8))
p arr