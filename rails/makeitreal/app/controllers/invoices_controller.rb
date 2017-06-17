class InvoicesController < ApplicationController
  before_action :aunthenticate_user!, only: [:create]

  def index
    @invoices = Invoice.all
  end

  def create
    invoice = params.require[:invoice]
    .permit(:total, :user_id, :status, :order_id)
    @invoice = Invoice.new invoice
    @invoice.user = current_user
    if @invoice.save
      redirect_to invoice_path(@invoice)
    else
      render :new
    end
  end

  def new
    @invoice = Invoice.new
  end

  def edit
    begin
      @invoice = Invoice.find params[:id]
    rescue ActiveRecordNotFount => e
      redirect_to invoices_path
    end
  end

  def show
    begin
      @invoice = Invoice.find params[:id]
    rescue ActiveRecordNotFount => e
      redirect_to invoices_path
    end
  end

  def update
    invoice = params
    .require(:invoice)
    .permit(:total, :user_id, :status, :order_id)

    @invoice.total = invoice[:total]
    if @invoice.save
      redirect_to invoice_path(@invoice)
    else
      render :edit
    end
  end

  def destroy
    @invoice = Invoice.destroy params[:id]
  end
end
