module HunkyDory
  class ApplicationController < Hunky::ApplicationController
    protect_from_forgery with: :exception
  end
end
