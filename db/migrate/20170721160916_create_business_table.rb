class CreateBusinessTable < ActiveRecord::Migration[5.1]
  def change
    create_table :local_businesses do |t|
      t.column :name, :string
      t.column :street, :string
      t.column :city, :string
      t.column :state, :string
      t.column :country, :string
      t.column :zipcode, :integer
      t.column :phone_number, :string
      t.column :business_type, :string
      t.column :current_status, :string
      t.column :key_peoples, :string
      t.column :founder, :string
      t.column :founded, :string
      t.column :line_of_business, :string
      t.column :number_of_employees, :integer
      t.column :website, :string

      t.timestamps

    end
  end
end
