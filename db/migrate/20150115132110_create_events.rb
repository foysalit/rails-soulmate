class CreateEvents < ActiveRecord::Migration
  def change
	create_table :events, :id => false do |t|
		t.string :uuid, :limit => 36, :primary => true
		t.string :title
		t.text :content

		t.timestamps
	end	
  end

    def self.down
		drop_table :events
	end

end
