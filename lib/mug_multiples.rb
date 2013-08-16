require "opencv"
require 'hashie'
require 'active_support' # I know, this makes me bad

include OpenCV

module MugMultiples
  ROOT_DIR = File.expand_path '../..', __FILE__
  CLASSIFIERS_DIR = File.join(ROOT_DIR, 'data/classifiers')

  CLASSIFIERS_LIST = {
    faces: 'haarcascade_frontalface_default.xml'
  }

  def self.load_classifier(somekey)
    fname = File.join CLASSIFIERS_DIR, CLASSIFIERS_LIST[somekey.to_sym]
    detector = OpenCV::CvHaarClassifierCascade::load( fname)

    return detector
  end
end

require_relative 'mug_multiples/image'