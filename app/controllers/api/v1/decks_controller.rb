class Api::V1::DecksController < ApplicationController

	def index
		decks = Deck.all.includes(:cards)
		render json: decks, except: [:created_at, :updated_at]
	end

	def show
		deck = Deck.find(params[:id])
		render json: deck
	end

	def create 
		deck = Deck.create!(deck_params)
		render json: deck
    end
    
	def update
		deck = Deck.find(params[:id])
		deck.update!(deck_params)
		render json: deck
	end

	def destroy
		deck = Deck.find(params[:id])
		deck.destroy!
		render json: {}
	end
	
	private
    
	def deck_params 
		params.permit(:title, :subject, :completed, :user_id)
	end

end
