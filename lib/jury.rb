class Jury
    attr_accessor :members
    
    def initialize
        @members = []
        
    end
    
    def add_member(name)
        @members << name
    end
    
    def cast_votes(finalists)
        vote_result = {}
        finalists.each do |finalist|
            vote_result[finalist] = 0
        end
            
        @members.each do |member|
            voted = finalists.sample
            vote_result[voted] +=1
            puts "#{member} votes to #{voted}"
        end
        return vote_result
    end
    
    def report_votes(vote_result)
        vote_result.each do |key,value|
            puts "#{key} got #{value} votes"
        end
    end
    
    def announce_winner(vote_result)
        winner = vote_result.max_by{|key,value|value}.first
        puts "#{winner}" + " is the winner".yellow
        winner
    end
    
end