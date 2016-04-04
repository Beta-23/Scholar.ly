class Donor < ActiveRecord::Base
has_many : students
has_many : students, through: : students_donors
end
