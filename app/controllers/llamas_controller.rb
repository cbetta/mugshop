class LlamasController < ApplicationController
  def index
    @llamas = (1..12).to_a
  end
end
