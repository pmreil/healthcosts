require 'soda/client'

client = SODA::Client.new({:domain => 'openpaymentsdata.cms.gov', :app_token => 'ppNX1qcrRdJ0p31TJbl7Vu23F', :ignore_ssl => true})

data = client.get("sb72-gakb", {:physician_first_name => "RICHARD", :physician_last_name => "SEKERAK"})

puts data.count
