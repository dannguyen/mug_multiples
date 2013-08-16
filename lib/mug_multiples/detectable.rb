require 'hashie'
module MugMultiples
  module Detectable

    extend ActiveSupport::Concern

    included do       
    end    


    #### detecting stuff
    def detected_objects
      @objs ||= Hashie::Mash.new
    end


    # returns CV objects that are found with the specified classifier
    # effects: sets detected_objects[classifier_sym]
    def detect_objects(classifier_name, opts={})
      classifier_sym = classifier_name.to_sym

      if !opts.empty? || detected_objects[classifier_sym].nil?
        opts_mash = Hashie::Mash.new opts
        detector = MugMultiples.load_classifier(classifier_sym)
        objects = detector.detect_objects cv_image_object, opts_mash 

        detected_objects[classifier_sym] = objects
      end

      return detected_objects[classifier_sym]          
    end
    
    # loads and memoizes a OpenCV image object
    def cv_image_object
      @cvimg ||= init_cv_image(@filename)
    end

    private

    def init_cv_image(fname)
      IplImage::load(fname)
    end
  end
end


