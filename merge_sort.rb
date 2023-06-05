def merge_sort(array)
  if array.length == 1
    array
  else
    array_length = array.length
    firsthalf = merge_sort(array[0..array_length/2 - 1])
    lasthalf = merge_sort(array[array_length/2..array_length-1])
  
    erg = []
    while firsthalf.length > 0 || lasthalf.length > 0
      if firsthalf.length == 0
        erg += lasthalf
        break
      elsif lasthalf.length == 0
        erg += firsthalf
        break
      elsif firsthalf.first < lasthalf.first
        erg << firsthalf.first
        firsthalf.delete_at(0)
      else
        erg << lasthalf.first
        lasthalf.delete_at(0)
      end
    end
    erg
  end
end

array = [1, 3, 6, 6, 2, 3, 4]
p merge_sort(array)