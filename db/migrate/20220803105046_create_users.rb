class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.text :password
      t.integer :posts_counters 

      t.timestamps
    end
  end
end
