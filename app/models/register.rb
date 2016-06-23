class Register < ActiveRecord::Base
  # Relations
  belongs_to :column

  # Rails validations
  validates :value, length: { minimum: 2 }, presence: true, on: [:create, :update]

  # Association validations
  validates_presence_of :column_id
end
