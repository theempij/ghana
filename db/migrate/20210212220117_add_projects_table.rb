class AddProjectsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :goal
      t.string :addressees
      t.string :location
      t.integer :amount_of_inhabitants
      t.string :location_description
      t.string :status_of_project
      t.integer :donations_needed
      t.integer :donations_received
      t.string :donation_code
    end
  end
end
