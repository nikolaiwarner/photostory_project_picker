# load words from yaml, it's an array of words
require 'yaml'
list = YAML::load(File.open(ARGV.first))

# Randomize
random_list = list.sort_by { rand }

# Output
random_list.each_with_index do |item, index|
  puts "#{index + 1}) #{item}"
end

