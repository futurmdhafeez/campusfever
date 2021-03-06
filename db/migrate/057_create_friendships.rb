class CreateFriendships < ActiveRecord::Migration
	
	def self.up
		create_table :friendships do |t|
			t.column :faculty_id, :string, :null => false
			t.column :friend_id, :string, :null => false
			t.column :created_at, :datetime
			t.column :accepted_at, :datetime
		end
	end
	
	def self.down
		drop_table :friendships
	end
end
