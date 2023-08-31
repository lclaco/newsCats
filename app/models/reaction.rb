class Reaction < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :kind, acceptance: {
    accept: %w[Me-Gusta DisGusta Aburrido Neutral Desinteresado Interesado]
  }

  def self.kinds
    %w[Me-Gusta DisGusta Aburrido Neutral Desinteresado Interesado]
  end

end
