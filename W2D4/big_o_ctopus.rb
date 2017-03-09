fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish_octopus(fishes)
  biggest_fish = nil

  fishes.each do |fish1|
    fishes.each do |fish2|
      if biggest_fish == nil || fish2.length > fish1.length
        biggest_fish = fish2
      end
    end
  end
  biggest_fish
end

class  Array

  def merge_sort(&prc)
    return self if length <= 1
    prc ||= Proc.new { |x,y| x<=>y }
    mid_idx = self.length / 2

    left = self[0...mid_idx].merge_sort(&prc)
    right = self[mid_idx..-1].merge_sort(&prc)

    Array.merge(left,right,&prc)

  end

  def self.merge(left,right,&prc)
    results = []

    until left.empty? || right.empty?
      case prc.call(left.first,right.first)
      when -1
        results << left.shift
      when 0
        results << left.shift
      when 1
        results << right.shift
      end
    end
      results.concat(left)
      results.concat(right)
      results
  end
end

def merge_sort_octopus(fishes)
  prc = Proc.new { |x,y| y.length <=> x.length}

  fishes.merge_sort(&prc).first
end

def clever_octopus(fishes)

  longest_fish = nil

  fishes.each do |fish|
    if longest_fish.nil? || fish.length > longest_fish.length
      longest_fish = fish
    end
  end
  longest_fish
end
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(position, tiles_array)
  tiles_array.each_with_index do |direction, i|
    return i if direction == position
  end
end

dance_hash = {
  :up => 1,
  :rightup => 2,
  :right => 3,
  :rightdown => 4,
  :down => 5,
  :leftdown => 6,
  :left => 7,
  :leftup => 8
}

def fast_dance(direction, dance_hash)
  dance_hash[direction]
end

# print sluggish_octopus(fishes)
# print merge_sort_octopus(fishes)
print clever_octopus(fishes)
