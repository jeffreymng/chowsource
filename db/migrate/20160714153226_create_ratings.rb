class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.references :user, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true
      t.integer :value, null: false

      t.timestamps null: false
    end
  end
end
