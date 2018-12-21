class Snack < ApplicationRecord
  belongs_to :machine
  has_many :machines, through: :machine_snacks

end
