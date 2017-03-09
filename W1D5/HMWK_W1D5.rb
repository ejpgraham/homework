class Stack
  attr_accessor :stack

    def initialize
      @stack = []
    end

    def add(el)
      stack << el
    end

    def remove
      stack.pop
    end

    def show
      stack
    end
  end


# stack = Stack.new
# stack.add(5)
# stack.add(3)
# stack.add(2)
# stack.add(4)
# stack.remove
# print stack.show

class Queue
  attr_accessor :queue

  def initialize
    @queue = []
  end

  def enqueue(el)
    queue << el
  end

  def dequeue
    queue.shift
  end

  def show
    queue
  end

end

# queue = Queue.new
# queue.enqueue(1)
# queue.enqueue(2)
# queue.enqueue(3)
# queue.enqueue(4)
# queue.dequeue
# print queue.show

class Map

  def initialize
    @map = Array.new
  end

  def assign(key, value)
    pair_index = @map.index {|pair| pair[0] == key}
    pair_index ? @map[pair_index][1] = value : @map.push([key,value])
    [key, value]
  end

  def lookup(key)
    @map.each {|pair| return pair[1] if pair[0] == key}
  end

  def remove(key)
    @map.reject! {|pair| pair[0] == key}
  end

  def show
    @map
  end

end
