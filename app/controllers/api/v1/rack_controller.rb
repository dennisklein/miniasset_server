class Api::V1::RackController < ApplicationController
  version 1

  caches :index, :cache_for => 5.minutes

  def index
    expose DatacenterRack.order(:name)
  end
end
