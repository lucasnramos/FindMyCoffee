class Api::V1::StoresController < ApplicationController
  before_action :set_store, only: [:show]

  def index
    p params
    @stores = Store
      .within(params[:longitude].to_f, params[:latitude].to_f)
      .sort_by { |store| store.rating_average }
      .reverse
  end
  def show 
    # Empty method since we have a before_action call
    # Does not return anything because it's implied a json response with jbuilder(?) 
    ## in views folder
  end

  private
  def set_store
    # the '!' signals to rails throw an error if no records are found
    @store = Store.find_by!(google_place_id: params[:id]) 
  end
end
