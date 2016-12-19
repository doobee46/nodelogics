class PagesController < ApplicationController
  def index
      @plans =Plan.all
  end

  def hosting
  end
    
  def login
  end

  def terms
  end

    
end
