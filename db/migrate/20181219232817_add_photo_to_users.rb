class AddPhotoToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :Photo, :string
  end
end
