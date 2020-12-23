class Api::V1::CardsController < ApplicationController

	def index
		cards = Card.all
		render json: cards, except: [:created_at, :updated_at]
	end

	def show
		card = Card.find(params[:id])
		render json: card
	end

	def create 
		card = Card.create!(card_params)
		render json: card
    end
    
	def update
		card = Card.find(params[:id])
		card.update!(card_params)
		render json: card
	end

	def destroy
		card = Card.find(params[:id])
		card.destroy!
		render json: {}
	end
	
	private
    
	def card_params 
		params.permit(:question, :answer)
	end

end
