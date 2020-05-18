class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_query = params[:question]
    if @question_query.present?
      if @question_query == 'I am going to work'
        @reply = 'Great!'
      elsif @question_query.last == '?'
        @reply = 'Silly question, get dressed and go to work!'
      else
        @reply = "I don't care, get dressed and go to work!"
      end
    end
  end
end
