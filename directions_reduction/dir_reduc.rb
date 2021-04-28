# https://www.codewars.com/kata/550f22f4d758534c1100025a/

def dirReduc(arr)
  opposites = {
    "NORTH": "SOUTH",
    "SOUTH": "NORTH",
    "EAST": "WEST",
    "WEST": "EAST"
  }

  stack = []

  arr.each do |dir|
    prevDir = stack.pop()
    unless prevDir === opposites[dir.to_sym]
      stack.push(prevDir) unless prevDir == nil
      stack.push(dir)
    end
  end
  
  stack
end