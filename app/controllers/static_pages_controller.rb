class StaticPagesController < ApplicationController
  def home
  	@skip_footer = true
  	@skip_header = true
  end

  
end
