class AddSeasonToShows < ActiveRecord::Migration[5.2] # The class name MUST be camelcase version of the file name without the number
    def change
      add_column :shows, :season, :string # The add_column rake command takes in the table name, the column name, and the data type
    end
  end
