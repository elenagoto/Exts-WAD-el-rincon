class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body
      t.reference :post
      t.reference :user

      t.timestamps
    end
  end
end
