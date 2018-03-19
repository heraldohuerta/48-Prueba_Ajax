class CompaniesController < ApplicationController
  before_action :authenticate_user!, except: :index
  def index
    @companies = Company.all
  end

  def create
    @companie = Company.new(name: params[:name])
    @companie.save
  end

  def edit
    @companie = Company.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def update
    @companie = Company.find(params[:id])
    @companie.update(name: params[:company][:name])
  end

  def show
    @companies = Company.all
  end

  def destroy
      @companie = Company.find(params[:id])
  		@companie.destroy
  end

end
