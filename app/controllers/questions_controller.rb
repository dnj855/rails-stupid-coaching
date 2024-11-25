class QuestionsController < ApplicationController

  def ask
  end

  def answer
    question = params[:question].upcase
    @answer = "I don't care, get dressed and go to work!"
    @answer = "Silly question, get dressed and go to work!" if question.end_with?("?")
    @answer = 'Great!' if question == "I AM GOING TO WORK"
  end

end
