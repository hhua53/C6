class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :number
      t.string :email
      t.string :notes

      t.timestamps
    end
  end
end
