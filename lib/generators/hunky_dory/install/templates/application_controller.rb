# All HunkyDory controllers inherit from this `Hunky::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
module Hunky
  class ApplicationController < ::ApplicationController
    before_action :authenticate_admin

    def authenticate_admin
      # TODO Add authentication logic here.
    end
  end
end
