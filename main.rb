# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

binding.pry

# pp @candidates

# p find(5)

# pp @candidates

pp qualified_candidates @candidates

pp ordered_by_qualifications @candidates
