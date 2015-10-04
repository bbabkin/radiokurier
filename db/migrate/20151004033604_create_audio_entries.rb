class CreateAudioEntries < ActiveRecord::Migration
  def change
    create_table :audio_entries do |t|

	    t.string :permalink
	    t.text :description
	    t.datetime :date
	    t.timestamps null: false
    end
  end
end
