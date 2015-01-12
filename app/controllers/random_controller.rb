require 'securerandom'

class RandomController < ApplicationController
  def enable
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
    subq = []
    enable.each do |question|
      if question.subjectcode == subject
        subq << question
      end 
    end
    a = [SecureRandom.random_number(5)]
    while(a.size != 3) do
      b = SecureRandom.random_number(5)
      a.each do |e|
        if e == b
          a.delete(e)
        end
      end
      a.push(b)
    end
    rques = []
    a.each do |n|
      subq.each do |question|
        if n+(5*subject) == question.id 
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
