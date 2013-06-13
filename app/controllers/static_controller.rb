class StaticController < ApplicationController
  def index
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
  end

  def about
  end

  def privacy_policy
  end

  def terms
  end

end
