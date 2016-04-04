class StudentsDonor < ActiveRecord::Base
  belongs_to :student
  belongs_to :donor
end
