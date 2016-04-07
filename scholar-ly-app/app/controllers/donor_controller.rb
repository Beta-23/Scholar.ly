class DonorController < ApplicationController
before_filter :authorize
def show
    render json: Donor.find(params[:id])
  end
end
