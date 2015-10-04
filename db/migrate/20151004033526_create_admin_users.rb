class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
			t.string "username", :limit => 50
			t.string "first_name", :limit => 25
			t.string "last_name", :limit => 50
			t.string "password_digest"
			t.timestamps
    end
  end
end

