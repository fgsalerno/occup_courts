class Partner < ApplicationRecord
  belongs_to :partner_state
  belongs_to :person
  has_many :occupation_courts
end
