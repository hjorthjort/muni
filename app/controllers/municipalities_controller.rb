class MunicipalitiesController < ApplicationController
  def show
    @municipality = Municipality.find(params[:id])
  end

  def new
    @municipality = Municipality.new
  end

  def create
    @municipality = Municipality.new(municipality_params)

    if @municipality.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    @article = Municipality.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
    def municipality_params
      params.require(:municipality).permit(:name, :official_id, :header_url)
    end

end
