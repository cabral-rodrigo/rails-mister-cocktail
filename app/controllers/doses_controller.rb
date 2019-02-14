class DosesController < ApplicationController
  before_action :set_cocktails, only: [:new, :create]

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(doses_params)

    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy

    redirect_to root_path
  end

  private
  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def set_cocktails
    @cocktail = Cocktail.find(params[:cocktail_id])
  end
end
