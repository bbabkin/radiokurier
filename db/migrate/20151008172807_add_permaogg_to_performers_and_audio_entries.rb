class AddPermaoggToPerformersAndAudioEntries < ActiveRecord::Migration
  def change
    add_column :audio_entries, :permaogg, :string
    add_column :performers, :permaogg, :string
  end
end
