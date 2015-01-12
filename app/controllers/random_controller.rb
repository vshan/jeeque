require 'securerandom'

class RandomController < ApplicationController
  def enable
    @no_of_questions = 3
    @questions = Question.all
  end

  def index
    enable
  end

  def oneques
    enable
  	random
  end

  def generate_question(subject)
  #  subq = enable.find(scode: subject)
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

  def quespaper
    @phyq = generate_question(1)
    @chemq = generate_question(2)
    @matq = generate_question(3)
  end

  def random
    @rand = @questions[SecureRandom.random_number(15)]
  end
end
