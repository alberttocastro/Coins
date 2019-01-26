class AssignmentController < ApplicationController

    def assignments
      @working_cards = Card.working_cards
      render "assignments"
    end

end
