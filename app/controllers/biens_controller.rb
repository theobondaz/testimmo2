require 'json'
require 'open-uri'

class BiensController < ApplicationController

  def index
    @biens = Bien.all
  end

  def new

  end

  def create

  end


end
