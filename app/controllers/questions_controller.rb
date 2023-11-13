class QuestionsController < ApplicationController
  def ask
  end

  def answer
    take_screenshot
    if params[:answer] == "I am going to work"
      @reponse = "Great !";
    elsif params[:answer].last == "?"
      @reponse = "Silly question, get dressed and go to work!";
    else;
      @reponse = "I don't care, get dressed and go to work!"
    end
  end
end
