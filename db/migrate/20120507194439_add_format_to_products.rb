class AddFormatToProducts < ActiveRecord::Migration
  def change
    add_column :products, :format, :text
  end
end
