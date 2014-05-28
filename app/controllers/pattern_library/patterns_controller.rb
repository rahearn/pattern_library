require_dependency "pattern_library/application_controller"

module PatternLibrary
  class PatternsController < ApplicationController
    def index
      @patterns = Pattern.all
    end
  end
end
