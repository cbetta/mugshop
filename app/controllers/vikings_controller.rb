class VikingsController < ApplicationController
  def index
    @vikings = (1..12).to_a
  end
end
