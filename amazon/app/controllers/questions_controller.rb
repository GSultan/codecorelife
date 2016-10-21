class QuestionsController < ApplicationController

  def index
    @question = Question.order(created_at: :desc)
  end

end
