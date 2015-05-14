require_dependency "pattern_library/application_controller"

module PatternLibrary
  class PatternsController < ApplicationController
    before_action :find_pattern, only: [:show, :edit, :update, :destroy]
    before_action :protect_builtin, only: [:edit, :update, :destroy]

    def index
      @patterns = Pattern.all
      render layout: layout
    end

    def show
    end

    def new
      @pattern = Pattern.new(order: Pattern.count)
    end

    def create
      @pattern = Pattern.new pattern_params
      if @pattern.save
        redirect_to patterns_path, notice: 'Pattern created successfully'
      else
        flash.now[:alert] = @pattern.errors.full_messages.join('. ')
        render :new
      end
    end

    def edit
    end

    def update
      if @pattern.update_attributes pattern_params
        redirect_to patterns_path, notice: 'Pattern updated successfully'
      else
        flash.now[:alert] = @pattern.errors.full_messages.join('. ')
        render :edit
      end
    end

    def destroy
      @pattern.destroy
      redirect_to patterns_path, notice: 'Pattern deleted'
    end

    private

    def layout
      params[:layout].present? ? params[:layout] : 'application'
    end

    def find_pattern
      @pattern = Pattern.find params[:id]
    end

    def protect_builtin
      redirect_to patterns_path unless @pattern.custom?
    end

    def pattern_params
      params.require(:pattern).permit :snippet, :usage, :order
    end
  end
end
