# All HunkyDory controllers inherit from this `Hunky::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
module Hunky
  class ApplicationController < ::ApplicationController
    before_action :authenticate_user, only: %i[index show]
    before_action :authenticate_admin, only: %i[create update destroy new edit]

    def authenticate_user
      # TODO Add authentication logic here.
    end

    def authenticate_admin
      # TODO Add authentication logic here.
    end
  end
end
