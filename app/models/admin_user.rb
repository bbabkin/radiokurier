class AdminUser < ActiveRecord::Base


	# To configure a different table name:
	# self.table_name = "admin_users"

	has_secure_password


	# shortcut validations, aka "sexy validations"
	validates :first_name, :presence => true,
		:length => { :maximum => 25 }
	validates :last_name, :presence => true,
		:length => { :maximum => 50 }
	validates :username, :length => { :within => 4..25 },
		:uniqueness => true


	scope :sorted, lambda { order("last_name ASC, first_name ASC") }
	
	
	def name
		"#{first_name} #{last_name}"
		# Or: first_name + ' ' + last_name
		# Or: [first_name, last_name].join(' ')
	end


end

