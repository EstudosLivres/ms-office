class Filter < ActiveRecord::Base
  # Relations
  belongs_to :report
  belongs_to :column
  belongs_to :register

  # Rails validations
  validates :value, length: { minimum: 2 }, presence: true, on: [:create, :update]

  # Association validations
  validates_presence_of :report_id
  validates_presence_of :column_id
  validates_presence_of :register_id
end
