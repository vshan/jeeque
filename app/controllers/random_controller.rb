require 'securerandom'

class RandomController < ApplicationController
  def oneques
  	@questions =Question.all
  	random
  end

  def quespaper
  end

  def random
 @rand = @questions[SecureRandom.random_number(3)]
  end
end
