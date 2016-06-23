class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      # Attributes
      t.string :value, null: false

      # Dependencies
      t.belongs_to :column, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end