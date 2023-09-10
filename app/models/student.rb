class Student < ApplicationRecord
 
    def name
        "#{first_name} #{last_name} #{email}"
    end
end
