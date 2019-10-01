class UpdateArtworksColumnType < ActiveRecord::Migration[6.0]


  def down
    change_column :artworks, :artist_id, :string, null: false
  end

  def up
    change_column :artworks, :artist_id, :integer, using: 'artist_id::integer', null: false
  end
end
