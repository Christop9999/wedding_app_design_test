class CreateSiteContents < ActiveRecord::Migration
  def change
    create_table :site_contents do |t|
    	

      t.timestamps
    end
  end
end
