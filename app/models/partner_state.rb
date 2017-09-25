class PartnerState < ApplicationRecord
    has_many :partners, dependent: :destroy
end
