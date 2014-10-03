class ArtisansController < ApplicationController
  def index
    @artisans = (1..12).to_a
  end
end
