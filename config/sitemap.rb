require 'rubygems'
require 'sitemap_generator'

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
  add hospitals_path, :priority => 0.9
  #
  # Add all articles:
  #
     Hospital.find_each do |hospital|
       add hospital_path(hospital), :lastmod => hospital.updated_at, :changefreq => 'weekly'
       add hospital_metrics_path(hospital), :lastmod => hospital.updated_at, :changefreq => 'weekly'
       add hospital_inpatient_path(hospital), :lastmod => hospital.updated_at, :changefreq => 'weekly'
       add hospital_outpatient_path(hospital), :lastmod => hospital.updated_at, :changefreq => 'weekly'
   end

    add drgs_path, :priority => 0.7, :changefreq => 'weekly'
     Drg.find_each do |drg|
       add drg_path(drg), :lastmod => drg.updated_at, :changefreq => 'weekly'

      State.find(:all,:order => "name").each do |state|
        add drgs_state_path(drg,state)
      end

      #Hospital.select('referral_region').group(:referral_region).each do |region|
        #add drgs_region_path(drg,region)
      #end

     end


    add apcs_path, :priority => 0.7, :changefreq => 'weekly'
     Apc.find_each do |drg|
       add apc_path(drg), :lastmod => drg.updated_at, :changefreq => 'weekly'

      State.find(:all,:order => "name").each do |state|
        add apcs_state_path(drg,state.abbrev)
      end

     end

    #add costs_path, :priority => 0.5, :changefreq => 'weekly'
    # Cost.find_each do |cost|
    #   add cost_path(cost), :lastmod => cost.updated_at, :changefreq => 'weekly'
    # end

    State.find(:all,:order => "name").each do |state|
      add hospital_state_path(state.abbrev)
    end

    add icd10s_path

end
