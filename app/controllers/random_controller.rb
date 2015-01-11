require 'securerandom'

class RandomController < ApplicationController
  def index
    @questions = Question.all
  end

  def oneques
    index
  	random
  end

  def quespaper
  end

  def random
    @rand = @questions[SecureRandom.random_number(3)]
  end
end
