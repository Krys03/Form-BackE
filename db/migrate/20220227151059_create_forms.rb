class CreateForms < ActiveRecord::Migration[6.1]
  def change
    create_table :forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :password

      t.timestamps
    end
  end
end
