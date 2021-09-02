class AddImgUrlToCommunities < ActiveRecord::Migration[6.0]
  def change
    add_column :communities, :img_url, :string
  end
end
