class Dog < ApplicationRecord
    has_many :employees
    def employees_count
        self.employees.count
    end 
        # d.sort_by do |dog|
        #     dog.employees_count
        #   end 
    
end 
