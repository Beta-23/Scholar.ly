class Student < ActiveRecord::Base
has_many : donors
has_many : donors, through: : students_donors
end
