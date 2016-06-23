class Register < ActiveRecord::Base
  # Relations
  belongs_to :column

  # Rails validations
  validates :value, length: { minimum: 2 }, presence: true, on: [:create, :update]

  # Association validations
  validates_presence_of :column_id

  # Return it value formatted if necessary
  def formatted_value
    value_as_date_hash  = Date._parse(self.value.to_s)

    if Date.valid_date?(value_as_date_hash[:year].to_i,
                        value_as_date_hash[:mon].to_i,
                        value_as_date_hash[:mday].to_i)

      I18n.l Date.parse(self.value), format: :default
    else
      self.value
    end
  end
end