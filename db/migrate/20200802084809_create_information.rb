class CreateInformation < ActiveRecord::Migration[6.0]
  def change
    create_table :information do |t|
      t.string :nickname, null: false
      t.string :location, null: false
      t.string :hobby, null: false
      t.timestamps
    end
  end
end
