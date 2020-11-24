
#Student#grade_percentage should return the percentage of tests that the student has
#   passed, a Float (so if a student has passed 3 / 9 tests that 
#   they've taken, this method should return the Float 33.33)

class Student
    attr_accessor :first_name 
    @@all = []
    def initialize(first_name)
        @first_name = first_name
        @@all << self 
    end

    def add_boating_test(boating_test_name, boating_status, instructor)
        @boating_test_name = boating_test_name
        @boating_status = boating_status
        @instructor = instructor
    end 

    def all_tests
        BoatingTest.all.select {|test| test.student == self}
    end 

    def all_instructors
        all_tests.map {|test| test.instructor}
    #should return an array of instructors with
    #whom this specific student took a boating test
    end 

    def self.find_student(first_name)
        Student.all.select{|student| student.name == first_name}
        #will take in a first name and output the student (Object) with that name
    end 
    
    def test_status 
        tests = all_tests.map {|test| test.test_status}
    end 

    def grade_percentage
        test_count = test_status.map {|status| status == "Passed"}
        test_count = (test_count/ (tests.count)) 
        test_count
         #   should return the percentage of tests that the student has passed, 
         #a Float (so if a student has passed 3 / 9 tests that they've taken, 
         #this method should return the Float `33.33`)
    end 

    def self.all 
        @@all 
    end 


end 
