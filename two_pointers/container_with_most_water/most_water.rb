def max_area(height)
  result = 0
  left = 0
  right = height.size - 1

  while left < right
    l_height = height[left]
    r_height = height[right]
    current_area = (right - left) * [l_height, r_height].min

    if result < current_area
      result = current_area
    end

    if l_height < r_height
      left += 1
    elsif
      right -= 1
    end
  end

  return result
end
