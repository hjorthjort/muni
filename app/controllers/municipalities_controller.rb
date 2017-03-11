class MunicipalitiesController < ApplicationController
  def show
    @municipality = Municipality.find(params[:id])
  end

  def new
  end

  def create
    @municipality = Municipality.new(municipality_params)

    if @municipality.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def municipality_params
      params.require(:municipality).permit(:name, :official_id)
    end

end
