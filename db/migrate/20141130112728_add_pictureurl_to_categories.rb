class AddPictureurlToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :pictureurl, :string, :default => "https://c4.staticflickr.com/8/7481/15718477848_1bd55b5fd6_n.jpg"
  end
end
