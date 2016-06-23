class CreateColumns < ActiveRecord::Migration
  def change
    create_table :columns do |t|
      # Attributes
      t.string :name, null: false

      # Dependencies
      t.belongs_to :report, index: true, foreign_key: true, null: true
      t.belongs_to :document, index: true, foreign_key: true, null: false

      t.timestamps null: false
    end
  end
end