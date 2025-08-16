class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  allow_unauthenticated_access
  def index
    @products = Product.order(:title)
  end
end
