class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      # Attributes
      t.string :name, null: false
      t.string :file, limit: 255, null: false

      t.timestamps null: false
    end
  end
end