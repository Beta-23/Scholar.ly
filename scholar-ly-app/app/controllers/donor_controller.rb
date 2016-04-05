class DonorController < ApplicationController
def show
    render json: Donor.find(params[:id])
  end
end
