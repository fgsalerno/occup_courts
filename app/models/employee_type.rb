class EmployeeType < ApplicationRecord
    has_many :employees, dependent: :destroy
end
