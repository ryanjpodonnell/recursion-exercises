class Array
  def my_each(&proc)
    self.length.times { |i| proc.call(self[i]) }
  end

  def my_map(&proc)
    output = []
    self.my_each { |i| output << proc.call(i) }
    output
  end

  def my_select(&proc)
    output = []
    self.my_each { |i| output << i if proc.call(i) }
    output
  end

  def my_inject(&proc)
    total = self.shift
    self.my_each { |i| total = proc.call(total, i)}
    total
  end

  def my_sort!(&proc)
    sorted = false
    until sorted
      sort_length = self.length
      sorted = true
      (0...sort_length).each do |ind|
        if proc.call(self[ind], self[ind+1]) == 1
          self[ind], self[ind+1] = self[ind+1], self[ind]
          sorted = false
        end
      end
      sort_length -= 1
    end
    self
  end
  
  def bubble_sort(&blk)
    blk = Proc.new {|num1, num2| num1 <=> num2} unless blk
    
    sorted = false
    until sorted
      sorted = true
      (count-1).times do |i|
        if blk.call(self[i], self[i+1]) == 1
          self[i], self[i+1] = self[i+1], self[i]
          sorted = false
        end
      end
    end
    
    self
  end
end


def eval_block(*args, &proc)
  if proc.nil?
    puts "NO BLOCK GIVEN!"
  else
    args.each { |num| proc.call(num) }
  end
end