class WelcomeController < ApplicationController
  def index
    # needs this so it is not nil
    @gossips = Gossip.all
  end
end
