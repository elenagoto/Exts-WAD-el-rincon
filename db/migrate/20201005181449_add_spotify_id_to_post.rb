class AddSpotifyIdToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :spotify_id, :string
  end
end
