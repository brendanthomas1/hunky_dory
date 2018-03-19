require_dependency 'hunky_dory/application_controller'

module HunkyDory
  class ChangesController < ApplicationController
    before_action :set_change, only: %i[show edit update destroy]

    PAGE_LENGTH = 25

    # GET /changes
    def index
      @changes = Change.page(params[:page]).per(PAGE_LENGTH).order(created_at: :desc)
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
    # TODO: Improve Flash messages
    # rubocop:disable Metrics/MethodLength
    def create
      @change = Change.new(change_params)

      if @change.save
        flash[:success] = 'Change was successfully created.'
        redirect_to @change
      else
        messages = @change.errors.map do |attribute, message|
          "#{attribute.capitalize} #{message}"
        end
        flash[:danger] = messages
        render :new
      end
    end
    # rubocop:enable Metrics/MethodLength

    # PATCH/PUT /changes/1
    def update
      if @change.update(change_params)
        flash[:success] = 'Change was successfully updated.'
        redirect_to @change
      else
        render :edit
      end
    end

    # DELETE /changes/1
    def destroy
      @change.destroy
      flash[:success] = 'Change was successfully destroyed.'
      redirect_to changes_url
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_change
      @change = Change.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def change_params
      params.require(:change)
            .permit(:summary, :before_description, :after_description)
    end
  end
end
