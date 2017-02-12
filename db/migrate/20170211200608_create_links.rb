class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :slug
      t.string :target_url

      t.timestamps
    end
  end
end
