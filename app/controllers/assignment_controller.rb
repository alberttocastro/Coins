class AssignmentController < ApplicationController

    def assignments
      @working_cards = Card.working_cards
    end

    # Declara todos as designações de um endereço como sendo encerradas
    def finish_all_card_assignments
      @params = params.permit(:card_id)

      begin
        Assignment.where(card_id: @params[:card_id], date: nil).each do |assignment|
          assignment.update(date: Date.today)
          #assignment.destroy
        end
      rescue => exception
        puts "An error ocurred while trying to get assignment done"
        puts exception
      end

      redirect_to assignments_path
    end

    # Função que cria uma designação para um publicador relacionando publicador e cartão de território
    def choose_publisher_to_assign
      
      @publisher_1_id = params[:publisher_1].to_i
      @publisher_2_id = params[:publisher_2].to_i
      
      begin
        # TODO: trocar para usuário dinâmico quando chegar a hora
        if @publisher_1_id != ""
          Assignment.create(user_id: User.first.id, card_id: params[:card].to_i)
        end
        if @publisher_2_id != ""
          Assignment.create(user_id: User.last.id, card_id: params[:card].to_i)
        end
      rescue => exception
        puts exception
      end

      redirect_to assignments_path
    end
    

end
