require_dependency 'hunky_dory/application_controller'

module HunkyDory
  class ChangesController < ApplicationController
    before_action :set_change, only: %i[show edit update destroy]

    def index
      @changes = Change.all.order(created_at: :desc)
    end

    def show; end

    def new
      @change = Change.new
    end

    def edit; end

    def create
      @change = Change.new(change_params)

      if @change.save
        flash[:success] = 'Change was successfully created.'
        redirect_to @change
      else
        flash_errors @change
        render :new
      end
    end

    def update
      if @change.update(change_params)
        flash[:success] = 'Change was successfully updated.'
        redirect_to @change
      else
        flash_errors @change
        render :edit
      end
    end

    def destroy
      @change.destroy
      flash[:success] = 'Change was successfully destroyed.'
      redirect_to changes_url
    end

    private

    def set_change
      @change = Change.find(params[:id])
    end

    def change_params
      params.require(:change)
            .permit(:summary, :before_description, :after_description)
    end
  end
end
