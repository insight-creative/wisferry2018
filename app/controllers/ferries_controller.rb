class FerriesController < ApplicationController

  def index
    @ferries = Ferry.search(params)
  end

end
