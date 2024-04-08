class Tree < ApplicationRecord



	validates :instagram, presence: true, format: { with: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/,
    message: 'Invalid URL format' }

    validates :name, presence: true, length: { minimum: 5, message: 'must be at least 5 characters long' }


	validates :instagram, format: { with: URI::DEFAULT_PARSER.make_regexp(%w[http https]), message: "must be a valid URL" }, allow_blank: true
	extend FriendlyId
  	friendly_id :name, use: :slugged
  	belongs_to :user
end
