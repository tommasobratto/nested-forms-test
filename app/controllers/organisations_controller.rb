class OrganisationsController < ApplicationController

  def index
    @organisations = Organisation.all
  end

  def new 
    @organisation = Organisation.new
    @organisation.categories.build
  end

  def create
    @organisations = Organisation.create(org_params)

    redirect_to organisations_path
  end

  def show
    @organisation = Organisation.find(params[:id])
  end

  def org_params
    params.require(:organisation).permit(:name)
  end
end
