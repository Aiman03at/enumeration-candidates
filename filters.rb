# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program


def find(id)
    # Your code Here
    candidates.each do |candidate|
      return candidate if candidate[:id] == id
    end
    
    nil  # Return nil if no candidate is found
  
  end
  
  def experienced?(candidate)
    # Your code Here
    candidate[:years_of_experience] >= 2
  end
  
  def qualified_candidates(candidates)
    candidates.select do |candidate|
      experienced?(candidate) &&
        has_github_points?(candidate, 100) &&
        knows_language?(candidate, ["Ruby", "Python"]) &&
        applied_recently?(candidate, 15) &&
        over_age?(candidate, 17)
    end
  
  end
  
  # More methods will go below


  def ordered_by_qualifications(candidates)
    candidates.sort_by { |candidate| [-candidate[:years_of_experience], -candidate[:github_points]] }
  end


  