require 'securerandom'

class RandomController < ApplicationController
  def enable
    @questions = Question.all
    @questions
  end

  def index
    enable
  end

  def oneques
    enable
  	random
  end

  def quespaper
  end

  def random
    @rand = @questions[SecureRandom.random_number(15)]
  end
end
