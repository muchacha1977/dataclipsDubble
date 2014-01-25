class StaticPagesController < ApplicationController
  def home
  	if params[:id]
  		p "show dataclip #{params[:id]}"
  	end
  end

  def help
  end
  def contact
  end
  def terms
  end
end
