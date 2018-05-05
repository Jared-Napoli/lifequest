class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :str
      t.integer :agl
      t.integer :end
      t.integer :wis
      t.integer :dsc

      t.timestamps
    end
  end
end
