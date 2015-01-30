class AsciisController < ApplicationController
  def index
    @asciis = (1..9).to_a
  end
end
