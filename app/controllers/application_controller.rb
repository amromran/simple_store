class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  include ActiveStorage::SetCurrent     # only needs to be done once, and only if we’re storing files on disk
end
