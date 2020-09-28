class AddPreviewTextToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :preview_text, :string
  end
end
