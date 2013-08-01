class CreateHcahpsQuestions < ActiveRecord::Migration
  def up
    create_table :metric_types do |t|
      t.string :name
      t.timestamps
    end

    create_table :metric_keys do |t|
      t.integer :metric_type
      t.string :metric_key
      t.timestamps
    end

    create_table :metric_values do |t|
      t.integer :hospital_ext_id
      t.integer :metric_key_id
      t.string :value
      t.string :sample_size
      t.string :response_rate
      t.string :footnote
      t.timestamps
    end

	execute 'insert into metric_types (name) values ("HCAHPS")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their nurses &quot;Sometimes&quot; or &quot;Never&quot; communicated well.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their nurses &quot;Usually&quot; communicated well.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their nurses &quot;Always&quot; communicated well.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their doctors &quot;Sometimes&quot; or &quot;Never&quot; communicated well.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their doctors &quot;Usually&quot; communicated well.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their doctors &quot;Always&quot; communicated well.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that they &quot;Sometimes&quot; or &quot;Never&quot; received help as soon as they wanted.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that they &quot;Usually&quot; received help as soon as they wanted.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that they &quot;Always&quot; received help as soon as they wanted.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their pain was &quot;Sometimes&quot; or &quot;Never&quot; well controlled.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their pain was &quot;Usually&quot; well controlled.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their pain was &quot;Always&quot; well controlled.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that staff &quot;Sometimes&quot; or &quot;Never&quot; explained about medicines before giving it to them.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that staff &quot;Usually&quot; explained about medicines before giving it to them.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that staff &quot;Always&quot; explained about medicines before giving it to them.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their room and bathroom were &quot;Sometimes&quot; or &quot;Never&quot; clean.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their room and bathroom were &quot;Usually&quot; clean.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that their room and bathroom were &quot;Always&quot; clean.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that the area around their room was &quot;Sometimes&quot; or &quot;Never&quot; quiet at night.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that the area around their room was &quot;Usually&quot; quiet at night.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that the area around their room was &quot;Always&quot; quiet at night.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients at each hospital who reported that YES they were given information about what to do during recovery.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported that they were not given information about what to do during their recovery at home.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who gave their hospital a rating of 6 or lower on a scale from 0 (lowest) to 10 (highest).")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who gave their hospital a rating of 7 or 8 on a scale from 0 (lowest) to 10 (highest).")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Patients who gave their hospital a rating of 9 or 10 on a scale from 0 (lowest) to 10 (highest).")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported NO they would not recommend the hospital.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Percent of patients who reported YES they would probably recommend the hospital.")'
	execute 'insert into metric_keys (metric_type,metric_key) values (1,"Patients who reported YES they would definitely recommend the hospital.")'

  end



  def down
  end
end


