class Api::V1::DatacenterController < ApplicationController
  version 1

  caches :index, :cache_for => 5.minutes

  def index
    expose Datacenter.order(:name)
  end
end
