class CreatePageSectionContents < ActiveRecord::Migration
  def change
    create_table :page_section_contents do |t|
      t.integer :content_id
      t.string :page_section_key
      t.string :locale
      t.text :content

      t.timestamps null: false
    end
  end
end
