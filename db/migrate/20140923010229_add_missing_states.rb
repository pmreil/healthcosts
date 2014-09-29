class AddMissingStates < ActiveRecord::Migration
  def change

	execute 'INSERT INTO states (abbrev,name,created_at,updated_at) VALUES ("GU","Guam",now(),now())'
	execute 'INSERT INTO states (abbrev,name,created_at,updated_at) VALUES ("MP","Mariana Islands",now(),now())'
	execute 'INSERT INTO states (abbrev,name,created_at,updated_at) VALUES ("PR","Puerto Rico",now(),now())'
	execute 'INSERT INTO states (abbrev,name,created_at,updated_at) VALUES ("VI","Virgin Islands",now(),now())'
	execute 'INSERT INTO states (abbrev,name,created_at,updated_at) VALUES ("DC","District of Colombia",now(),now())'
	execute 'INSERT INTO states (abbrev,name,created_at,updated_at) VALUES ("AS","American Samoa",now(),now())'


  end
end
