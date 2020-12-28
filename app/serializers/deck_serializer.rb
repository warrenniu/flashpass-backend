class DeckSerializer < ActiveModel::Serializer
  attributes :id, :title, :subject, :completed, :user_id
	
	has_many :cards
end