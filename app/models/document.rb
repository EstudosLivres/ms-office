class Document < ActiveRecord::Base
  # Relations
  has_many :columns, dependent: :delete_all
  has_many :registers, through: :columns, dependent: :delete_all

  # Rails validations
  validates :name, length: { minimum: 2 }, presence: true, on: [:create, :update]
end