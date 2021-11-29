class RadiosController < ApplicationController
  def index
    @radios = Radio.all
  end
  
  def new
    @radios = Radio.new
  end
  
  def create
    radios = Radio.new(title: params[:radios][:title], url:
    params[:radios][:url], text:[:radios][:text])
    radios.save
    redirect_to '/'
  end
  
  
  def search
    @radios = Radio.where(text: params[:keyword])
    render "index"
  end
end
