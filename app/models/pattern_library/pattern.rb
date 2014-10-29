module PatternLibrary
  class Pattern < ActiveRecord::Base

    default_scope { order :order }

    validates_presence_of :snippet
    validates_numericality_of :order, only_integer: true, greater_than_or_equal_to: 0
  end
end
