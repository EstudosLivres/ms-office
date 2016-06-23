class Report < ActiveRecord::Base
  # Relations
  has_many :filters
  accepts_nested_attributes_for :filters
end
