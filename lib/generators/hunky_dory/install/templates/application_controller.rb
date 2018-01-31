# All HunkyDory controllers inherit from this `Hunky::ApplicationController`,
# making it the ideal place to put authorization logic or other
# before_actions.
module Hunky
  class ApplicationController < ::ApplicationController
    before_action :authorize_user, only: %i[index show]
    before_action :authorize_admin, only: %i[create update destroy new edit]

    def authorize_user
      # TODO Add authorization logic here.
    end

    def authorize_admin
      # TODO Add authorization logic here.
    end
  end
end
