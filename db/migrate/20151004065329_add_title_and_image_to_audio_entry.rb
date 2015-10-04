class AddTitleAndImageToAudioEntry < ActiveRecord::Migration
  def change
    add_column :audio_entries, :title, :string
    add_column :audio_entries, :image, :string
  end
end
