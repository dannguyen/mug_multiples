require 'delegate'

require_relative 'detectable'
require_relative 'renderable'


module MugMultiples
  class Image < SimpleDelegator
    include MugMultiples::Detectable
    include MugMultiples::Renderable

    attr_reader :filename
    def initialize(fthing)
      if fthing.kind_of?(OpenCV::CvMat)
        @cvimg = fthing
      else
        ## new file
        @filename = fthing
      end
    end

    # cv_image_object comes from Detectable
    def __getobj__
      __setobj__(cv_image_object)
      super
    end


  end
end

require_relative 'image/source_image'
require_relative 'image/face'
