class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      # Attributes
      t.string :name

      t.timestamps null: false
    end
  end
end
