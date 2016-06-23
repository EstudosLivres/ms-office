class CreateFilters < ActiveRecord::Migration
  def change
    create_table :filters do |t|
      t.belongs_to :report, index: true, foreign_key: true
      t.belongs_to :column, index: true, foreign_key: true
      t.belongs_to :register, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
