# frozen_string_literal: true

class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :posts, :spotify_id, :spotify_code
  end
end
