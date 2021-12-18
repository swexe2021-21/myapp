class RadiosController < ApplicationController
  def index
    @radios = Radio.all
  end
  
  def new
    @radios = Radio.new
  end
  
  def create
    @radios = Radio.new(title: params[:radio][:title], 
    url: params[:radio][:url], text: params[:radio][:text])
    @radios.save
    redirect_to '/'
  end
  
  def destroy
    radio = Radio.find(params[:id])
    radio.destroy
    redirect_to '/'
  end
  
  def search
    @radios = Radio.where("title like ?","%#{params[:keyword]}%")
    render "/"
  end
  
  def show
    @radios = Radio.all.sample(1) 
  end
end
