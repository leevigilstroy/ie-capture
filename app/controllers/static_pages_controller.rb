class StaticPagesController < ApplicationController
  skip_before_action :require_login
  
  def home
  end

  def about
  end

  def help
  end
end
