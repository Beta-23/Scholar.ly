class Donor < ActiveRecord::Base
has_many : students, through: : donors_students
end
