class Column < ActiveRecord::Base
  # Relations
  belongs_to :document
  has_many :registers, dependent: :delete_all

  # Rails validations
  validates :name, length: { minimum: 2 }, presence: true, on: [:create, :update]

  # Association validations
  validates_presence_of :document_id
end