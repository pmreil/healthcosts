class Icd10sController < ApplicationController
  def index
  end

  def search
    if !params[:q].nil?
      @icd10s = Icd10.find_with_index("^"+params[:q])
      @icd10s = @icd10s.sort_by { |icd10| icd10.description }
    end
  end

  def show
    @icd10 = Icd10.find(params[:id])
  end

end
