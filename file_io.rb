require 'YAML'

makes = File.open('car_makes.txt', 'r+')
models = File.open('car_models.txt', 'r+')

# puts makes.read
# puts models.read

hash = Hash.new

makesArr = []
modelsArr = []
modelOnly = []
makesOnly = []

# splits models into array of arrays
models.each do |i|
  modelsArr = i.split('=')
  # puts modelsArr[1]
  modelOnly << modelsArr[1].chomp
end
# puts modelOnly

makes.each do |x|
  makesArr = x.chomp
  # puts makesArr
  # creates a hash; makes become the keys and models the values
  makesOnly << x.chomp
end
# puts makesOnly

# chomp gets rid of extra characters
hash = Hash[makesOnly.zip modelOnly]
puts hash
# .zip will combines the arrays in an ordered way


