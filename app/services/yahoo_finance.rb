class YahooFinance
  require 'rest-client'
  require 'json'

  attr_reader :options, :url, :q, :language

  def initialize
    @options = {}
    @url = 'https://query2.finance.yahoo.com/v8/finance/chart/PETR4.SA?'
    @q = 'spotcode'
    @language = 'ruby'
  end

  def asset_variation
    RestClient.get("#{url}q=#{q}&language=#{language}")
  end
end
