class Student < ActiveRecord::Base
has_many : donors, through: : donors_students
end
