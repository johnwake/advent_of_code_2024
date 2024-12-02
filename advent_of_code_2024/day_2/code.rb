def is_safe?(levels)
    increasing = levels[1] > levels[0]
    
    levels.each_cons(2) do |a, b|
      return false if increasing ? b <= a || b - a > 3 : b >= a || a - b > 3
    end
    
    true
  end
  
  file_path = 'input.txt'
  data = File.readlines(file_path).map(&:chomp)  # Read lines and remove trailing newline
  
  safe_levels = data.count { |line| is_safe?(line.split.map(&:to_i)) }
  
  p safe_levels 
