class Student < ActiveRecord::Base
  has_secure_password
  has_many :student_donors
  has_many :donors, through: :student_donors
  validates_presence_of :scholarships

  def scholarship_money
    "$#{scholarships.to_i}"
  end

# def self.search(search)
#   if search
#     find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
#   else
#     find(:all)
# #     end
#   end
# def as_json(options = {})
#     super(options.merge(include: [:student, first_name: {include: :student}]))
#   end
end
