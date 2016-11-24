class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
			t.string :alt
			t.string :url
			t.string :text

      t.timestamps
    end
  end
end
