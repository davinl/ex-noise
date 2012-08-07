class CreateFormats < ActiveRecord::Migration
  def change
    create_table :formats do |t|
      t.text :name
      t.text :abbreviation

      t.timestamps
    end
  end
end
