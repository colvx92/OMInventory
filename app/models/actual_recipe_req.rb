class ActualRecipeReq < ApplicationRecord
  belongs_to :surgery_appt
  belongs_to :supply_list
  belongs_to :surgery_type

  validates :qty, presence: true

  after_save :check_inventory

  def check_inventory
    # if status == 'complete'
    #   # decrement inventory
    # end
  end

end
