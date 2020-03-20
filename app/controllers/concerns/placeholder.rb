module Placeholder
  extend ActiveSupport::Concern

  def self.image_generator(height:, width:, placeholder_color: "000")
    "https://via.placeholder.com/#{height}x#{width}/#{placeholder_color}"
  end
end