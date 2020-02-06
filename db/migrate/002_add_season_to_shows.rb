#write a migration to add
#column => season, to the shows table. 
#The datatype of this column is string.

class AddSeasonToShows < ActiveRecord::Migration[5.2]
    def change
        #adding to  table...name....type 
        add_column :shows, :season, :string
    end
end