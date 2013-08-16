module MugMultiples
  module Renderable

    extend ActiveSupport::Concern
    included do       
    end    

    private 

    def init_image_obj(fname)
      Magick::Image::read(fname).first
    end

  end
end