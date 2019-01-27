class AssignmentController < ApplicationController

    def assignments
      @working_cards = Card.working_cards
      render "assignments"
    end

    # Declara todos as designações de um endereço como sendo encerradas
    def finish_all_card_assignments
      @params = params.permit(:card_id)

      begin
        Assignment.where(card_id: @params[:card_id], date: nil).each do |assignment|
          assignment.update(date: Date.today)
        end
      rescue => exception
        puts "An error ocurred while trying to get assignment done"
        puts exception
      end

      redirect_to assignments_path
    end

end
