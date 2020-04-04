module PortfoliosHelper
    def image_generator(height:, width:, placeholder_color: "000")
        "https://via.placeholder.com/#{height}x#{width}/#{placeholder_color}"
    end
    def portfolio_img img, type
      if img.model.main_image? || img.model.thumb_image?
        img.url
      elsif type == 'thumb'
        image_generator(height: '350', width: '200', placeholder_color: '8ED3D3')
      elsif type == 'main'
        image_generator(height: '600', width: '400', placeholder_color: '8FD3D3')
      end
    end
end