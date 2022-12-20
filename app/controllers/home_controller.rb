class HomeController < ApplicationController
  before_action :set_yahoo_finance
  def index
    @asset_variation = @yahoo_finance.asset_variation
  end

  private

  def set_yahoo_finance
    @yahoo_finance = YahooFinance.new
  end
end