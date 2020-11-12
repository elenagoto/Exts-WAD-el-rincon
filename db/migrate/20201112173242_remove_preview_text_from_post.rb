class RemovePreviewTextFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :preview_text, :string
  end
end
