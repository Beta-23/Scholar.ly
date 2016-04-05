class Student < ActiveRecord::Base
  has_secure_password
  has_many :student_donors
  has_many :donors, through: :student_donors

# def as_json(options = {})
#     super(options.merge(include: [:student, first_name: {include: :student}]))
#   end
end
