class DonorController < ApplicationController
before_filter :authorize, only: [:index, :show]
def show
    render json: Donor.find(params[:id])
  end
end
