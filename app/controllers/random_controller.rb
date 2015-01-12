require 'securerandom'

class RandomController < ApplicationController
  def enable
    @no_of_questions = 3
    @questions = Question.all
  end

  def index
    enable
  end

  def oneques(params)
    enable
   # scode = params[:subject]
  	random
  end

  def generate_question(subject)
  #  subq = enable.find(scode: subject)
    subq = []
    enable.each do |question|
      if question.subjectcode == subject
        subq << question
      end 
    end
    a = [SecureRandom.random_number(subq.size)]
    while(a.size != @no_of_questions) do
      b = SecureRandom.random_number(subq.size)
      a.each do |e|
        if e == b
          a.delete(e)
        end
      end
      a.push(b)
    end
    rques = []
    a.each do |n|
      subq.each_with_index do |question, index|
        if n == index
          rques << question
        end
      end
    end
    rques
  end

  def quespaper(params)
    @phyq = generate_question(1)
    @chemq = generate_question(2)
    @matq = generate_question(3)
  end
  
  def create 
    #@question = Question.new(question_params)
    respond_to do |format|
      if params[:commit] == "Generate Question Paper"
        format.html do
          quespaper(params)
          render action: 'quespaper'
        end
      end
      format.html do
        oneques(params)
        render action: 'oneques'
      end
    end
  end

  def random
    @rand = @questions[SecureRandom.random_number(15)]
  end
end
