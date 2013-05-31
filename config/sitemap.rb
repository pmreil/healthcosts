# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.hospitalcostcompare.com"

SitemapGenerator::Sitemap.create do
  # Put links creation logic here.
  #
  # The root path '/' and sitemap index file are added automatically for you.
  # Links are added to the Sitemap in the order they are specified.
  #
  # Usage: add(path, options={})
  #        (default options are used if you don't specify)
  #
  # Defaults: :priority => 0.5, :changefreq => 'weekly',
  #           :lastmod => Time.now, :host => default_host
  #
  # Examples:
  #
  # Add '/hospitals'
  #
  add about_path, :priority => 0.7 
   add hospitals_path, :priority => 0.9, :changefreq => 'yearly'
  #
  # Add all articles:
  #
     Hospital.find_each do |hospital|
       add hospital_path(hospital), :lastmod => hospital.updated_at, :changefreq => 'yearly'
     end

    add drgs_path, :priority => 0.7, :changefreq => 'yearly'
     Drg.find_each do |drg|
       add drg_path(drg), :lastmod => drg.updated_at, :changefreq => 'yearly'
     end

end
