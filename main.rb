def two_sum(int_array, target)
  holding = {}
  int_array.each_with_index do |int, ix|
    remaining = target - int
    if holding.include?(remaining)
      return [holding[remaining], ix]
    end
    holding[int] = ix
  end
end

int_array_1 = [1, 3, 2, -2]
target = 3
puts two_sum(int_array_1, target).inspect
