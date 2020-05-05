class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end
  
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)

    
    if @gossip.save
      redirect_to @gossip
    else
      render 'new'
    end

  end



   private
   def gossip_params
   params.require(:gossip).permit(:title, :text)
   end 

end
