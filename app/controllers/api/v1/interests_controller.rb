class Api::V1::InterestsController < ApplicationController
  before_action :find_interest, only: [:destroy, :update]
  skip_before_action :authorized, only: [:index, :show]

  def index
    @interests = Interest.all
    render json: @interests
  end

  def show
    render json: @interest
  end

  def create
    @interest = Interest.new(interest_params)
    if @interest.save
      render json: @interest, status: :accepted
    else
      render json: { errors: @interest.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @interest.update(interest_params)
    if @interest.save
      render json: @interest, status: :accepted
    else
      render json: { errors: @interest.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    @interest.destroy()
    render json: @interest
  end

  private

  def interest_params
    params.permit(:name, :summary, :order_id, :user_id)
  end

  def find_interest
    @interest = Interest.find(params[:id])
  end
end
