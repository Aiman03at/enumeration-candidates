# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'


candidates = @candidates

# Call the ordered_by_qualifications method
ordered_candidates = ordered_by_qualifications(candidates)

# Pretty print the ordered candidates
pp ordered_candidates
# Pretty print the original candidates (if you want to see both)


