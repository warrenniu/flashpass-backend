class DeckSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :completed, :count, :user_id
	
	has_many :cards
end