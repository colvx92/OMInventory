class SurgeryRecipeReq < ApplicationRecord
  belongs_to :supply_list
  belongs_to :surgery_type

  validates :qty, presence: true

end
