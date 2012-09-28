class Karate

  # these three are correct, but the point is to
  # write a binary search
  def self.chop1(int, array_of_int)
    array_of_int.find_index(int) ? array_of_int.find_index(int) : -1
  end

  def self.chop2(int, array_of_int)
    array_of_int.find_index(int) || -1
  end

  def self.chop3(int, array_of_int)
    r = array_of_int.join =~ /#{int}/
    r ? r : -1
  end

  def self.chop4(int, array_of_int)
    min, max = 0, array_of_int.count - 1

    while max >= min
      mid = (min + max) / 2
      if array_of_int[mid].to_i < int.to_i
        min = mid.to_i + 1
      elsif array_of_int[mid].to_i > int.to_i
        max = mid.to_i - 1
      else
        return mid.to_i
      end
    end
    -1
  end

  def self.chop5(int, arr)
    min = 0
    max = (arr.count - 1)
    self.binary_search(int, arr, min, max)
  end

private

  def self.binary_search(int, arr, min, max)
    if min <= max
      mid = (min + max)/2
      if (int == arr[mid])
        return mid
      else
        if(int > arr[mid])
          min = mid + 1
        else
          max = mid - 1
        end
      end
    return self.binary_search(int, arr, min, max)
   end
   return -1;
  end

end
