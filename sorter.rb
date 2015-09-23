class Sorter

  def sort(user_sequence)
    sequence  = user_sequence
    done_sort = false
      while done_sort == false
        done_sort = true 
    	  sequence.each_with_index do |x,i|
          previous = sequence[i]
          current  = sequence[i+1]
          if current != nil && previous > current
            sequence[i+1] = previous
            sequence[i]   = current
            done_sort     = false
          end
        end
      end
    result = sequence.join(" ")
    puts "Final result: #{result}"
  end
end

a = Sorter.new
a.sort([6,3, 1])