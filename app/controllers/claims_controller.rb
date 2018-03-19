class ClaimsController < ApplicationController
  before_action :authenticate_user!
  def index
    @companie = Company.find(params[:company_id])
    @claims = Claim.all.order('created_at DESC')


  end

  def create
    @companie = Company.find(params[:company_id])
    @claim    = Claim.new(comment: params[:claim][:comment], company_id:params[:company_id],user_id: current_user.id)
    @claim.save
  end

  def edit

  end

  def update
    byebug
  end

  def show
    byebug
  end

  def destroy
    @claim = Claim.find(params[:id])
    @claim.destroy
  end
end
