class QuotesController < ApplicationController
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  def index
    @quotes = Quote.all
  end

  def new
    @quote = Quotes.new
  end

  def show
  end

  def create
    @quote = Quotes.new(quote_params)
    if @quote.save
      redirect_to quote_path, notice: t(".treated")
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @quote.update(quote_params)
      redirect_to quote_path, notice: t(".updated")
    else
      render :edit
    end
  end

  def destroy
    @quote.destroy
    redirect_to quote_path, notice: t(".destroyed")
  end

  private

  def set_quote
    @quote = Quote.find(params[:id])
  end

  def quote_params
    params.require(:quote).permit(:name)
  end
end
