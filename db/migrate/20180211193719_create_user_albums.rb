class CreateUserAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :user_albums do |t|
      t.references :user, foreign_key: true
      t.references :album, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
