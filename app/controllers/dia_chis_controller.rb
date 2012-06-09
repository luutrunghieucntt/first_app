class DiaChisController < ApplicationController
  def index
    @account = Account.find(params[:account_id])
    @diachis = @account.dia_chis
  end

  def show
    @account = Account.find(params[:account_id])
    @diachi = @account.dia_chis.find(params[:id])
  end

  def new
    @account = Account.find(params[:account_id])
    
    @diachi = @account.dia_chis.build
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @diachi }
    end
  end
  
  def create
    @account = Account.find(params[:account_id])
    
    @diachi = @account.dia_chis.build(params[:dia_chi])
    
    if @diachi.save
      redirect_to account_dia_chis_url(@account, @diachi)
    else
      render :action => "new"
    end
  end

  def edit
    @account = Account.find(params[:account_id])
    @diachi = @account.dia_chis.find(params[:id])
  end
  
  def update
    @account = Account.find(params[:account_id])
    
    @diachi = @account.dia_chis.find(params[:id])  
    if @diachi.update_attributes(params[:dia_chi])
      redirect_to account_dia_chis_url(@account, @diachi)
    else
      render :action => "edit"
    end
  end
  
  def destroy
    @account = Account.find(params[:account_id])
    @diachi = @account.dia_chis.find(params[:id])
    
    @diachi.destroy
    
    respond_to do |format|
      format.html {redirect_to account_diachi_path(@diachi)}
      format.xml {head :ok}
    end
  end
  
end
