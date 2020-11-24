class Instructor
    attr_accessor :name 
    @all = []
    def initialize(name)
        @name = name 
        @@all << self
    end 

    def passed_student 

    end 

    def pass_student()

    end 

    def fail_student 
        
        
    end 

    def all_students
        
    end 

    end 

    def self.all
        @@all 
    end 
end
