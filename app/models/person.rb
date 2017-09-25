class Person < ApplicationRecord
    has_one :employees
    has_one :partners
end
