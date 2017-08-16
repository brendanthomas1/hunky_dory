require_dependency 'hunky_dory/application_controller'

module HunkyDory
  class ChangesController < ApplicationController
    before_action :set_change, only: %i[show edit update destroy]

    # GET /changes
    def index
      @changes = Change.all
    end

    # GET /changes/1
    def show; end

    # GET /changes/new
    def new
      @change = Change.new
    end

    # GET /changes/1/edit
    def edit; end

    # POST /changes
    def create
      @change = Change.new(change_params)

      if @change.save
        redirect_to @change, notice: 'Change was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /changes/1
    def update
      if @change.update(change_params)
        redirect_to @change, notice: 'Change was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /changes/1
    def destroy
      @change.destroy
      redirect_to changes_url, notice: 'Change was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_change
      @change = Change.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def change_params
      params.require(:change).permit(:summary, :text)
    end
  end
end
