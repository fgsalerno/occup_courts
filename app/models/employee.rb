class Employee < ApplicationRecord
  belongs_to :employee_type
  belongs_to :person
  has_many :occupation_courts
end
