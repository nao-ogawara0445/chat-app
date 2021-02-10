class RoomsController < ApplicationController
  def new
    @new =Room.new
  end
end
