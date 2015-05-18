class AddProviderImageToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider_image, :string
  end
end
