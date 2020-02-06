#In this class write the MIGRATION code to create a
#shows table. The table should have a name, network, day and rating columns

class CreateShows < ActiveRecord::Migration[5.2]
    def change
        create_table :shows do |t|
            t.string :name
            t.string :network
            t.string :day
            t.integer :rating
        end
    end
end