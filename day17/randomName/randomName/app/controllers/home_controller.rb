class HomeController < ApplicationController
  def home
      if params[:names] != nil && params[:names] != ""
      names = params[:names].split(',').shuffle
      @winner = names.pop
      end
  end
end
