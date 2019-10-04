class BillsController < ApplicationController

  def index
    @query = params[:query]
    @result = Bill.search(@query) if @query.present?
    params[:query] = nil
  end
end
