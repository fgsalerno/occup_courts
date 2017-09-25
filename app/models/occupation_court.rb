class OccupationCourt < ApplicationRecord
  belongs_to :court
  belongs_to :partner
  belongs_to :employee
end
