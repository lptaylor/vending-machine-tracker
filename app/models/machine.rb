class Machine < ApplicationRecord
  validates_presence_of :location

  belongs_to :owner
  belongs_to :machine_snacks
  has_many :snacks, through: :machinesnacks



  def avg_price
    snacks.average(:price)
  end

end
