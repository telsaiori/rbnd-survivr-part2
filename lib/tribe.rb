class Tribe
    attr_reader :name, :members
    def initialize(options = {})
        @name = options[:name].pink
        @members = options[:members]
        puts "#{@name} tribe created"
    end
    
    def to_s
        @name
    end
    
    def tribal_council(options = {})
        immune = options[:immune]
        #puts immune
        out_member = @members.select{|member| member != immune}.sample
        puts "#{@name} has voted #{out_member} out"
        @members.delete(out_member)
    end
end