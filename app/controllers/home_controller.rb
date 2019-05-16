class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = 'You did not enter a correct ticker.'
    elsif

      if params[:id]
        begin
          @stock = StockQuote::Stock.quote(params[:id])
        rescue StandardError
          @error = "That stock symbol does not match any existing stock symbols... Please try again"
        end

      end
    end
  end

  def about
  end
end
