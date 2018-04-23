# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.find { |candidate| candidate[:id] == id }
end

def experienced?(candidate)
  candidate[:years_of_experience] >= 2
end

def qualified_candidates(candidates)
  candidates.find_all { |c| experienced?(c) && c[:github_points] >= 100 &&
  c[:date_applied] >= 15.days.ago && (c[:languages].include?("Ruby") || c[:languages].include?("Python")) }
end

def ordered_by_qualifications(candidates)
   candidates.sort_by { |c| [c[:years_of_experience], c[:github_points]] }.reverse
end
