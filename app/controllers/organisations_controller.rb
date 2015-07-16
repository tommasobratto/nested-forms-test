class OrganisationsController < ApplicationController

  def index
    @organisations = Organisation.all
  end

  def new 
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.create(org_params)

    redirect_to organisations_path
  end

  def show
    @organisation = Organisation.find(params[:id])
    p @organisation.categories[0].name
  end

  def org_params
    params.require(:organisation).permit(:name, categories_attributes: [:_destroy, :category_id])
  end
end
