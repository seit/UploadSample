class CreateUploadFiles < ActiveRecord::Migration
  def change
    create_table :upload_files do |t|
      t.string :filename
      t.integer :filesize
      t.string :filepath

      t.timestamps
    end
  end
end
