module MugMultiples
  module Renderable

    extend ActiveSupport::Concern
    included do       
    end    

    private 

    def init_image_obj(fname)
      Magick::Image::read(fname).first
    end


    def convert_ipl_image(image)
#      http://stackoverflow.com/questions/10215736/highgui-and-ruby
 #     image.data.unpack("C*")
  #      .each_slice(3)
   #     .to_a.each_slice(width)
   #     .to_a
    end

  end
end