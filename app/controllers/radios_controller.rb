class RadiosController < ApplicationController
  def index
    @radios = Radio.all
  end
  
  def search
    @radios = Radio.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end
end
