def calculate_total_distance(data)
    lines = data.split("\n")
    left_list, right_list = lines.map { |line| line.split.map(&:to_i) }.transpose
    
    left_list.sort!
    right_list.sort!
  
    total_distance = left_list.zip(right_list).sum { |(left_num, right_num)| (left_num - right_num).abs }
  
    return total_distance
  end

file_path = 'input.txt'
data = File.read(file_path)

total_distance = calculate_total_distance(data)

p total_distance
