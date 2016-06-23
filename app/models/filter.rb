class Filter < ActiveRecord::Base
  belongs_to :report
  belongs_to :register
end
