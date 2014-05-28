module PatternLibrary
  class Pattern < ActiveRecord::Base

    default_scope { order :order }

  end
end
