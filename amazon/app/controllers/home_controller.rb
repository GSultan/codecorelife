class HomeController < ApplicationController
  def index
  end

  def contact
  end

  def about
  end

  def contact_submit
    @name = params[:full_name]
  end

  def faq
  end
end
