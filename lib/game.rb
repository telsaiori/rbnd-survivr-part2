class Game
    attr_reader :tribes
    
    def initialize(*tribes)
        @tribes = tribes
    end
    
    def add_tribe(tribe)
        @tribes << tribe
    end
    
    def immunity_challenge
        lose_tribe = @tribes.sample
        #puts "#{lose_tribe} has lost the immunity challenge and must vote out a member"
        puts "#{lose_tribe}" + "has lost the immunity challenge and must vote out a member".red
        lose_tribe
    end
    
    def clear_tribes
        @tribes.clear
    end
    
    def merge(new_tribe)
        new_members = @tribes.first.members + @tribes.last.members
        clear_tribes
        new_tribe = Tribe.new(name: new_tribe, members: new_members)
        add_tribe(new_tribe)
        new_tribe
    end
    
    def individual_immunity_challenge
        @tribes.sample.members.sample
    end
end