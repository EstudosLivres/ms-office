class Filter < ActiveRecord::Base
  # Relations
  belongs_to :report
  belongs_to :column
  belongs_to :register

  # Association validations
  validates_presence_of :column_id
  validates_presence_of :register_id
end
