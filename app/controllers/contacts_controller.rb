class ContactsController < ApplicationController
  def create
    @account = Account.find (params[:account_id])
    contact = @account.contacts.create(params[:contact])
    redirect_to account_path(@account)
  end
end
