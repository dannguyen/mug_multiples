require 'spec_helper'

class MockImage
  include Renderable
  def initialize(filename)
    @filename = filename
  end

  def cv_image_object
    @cvimg ||= IplImage::load(@filename)
  end
end

MOCK_IMAGE = MockImage.new(PIMGS.first)

describe 'MugMultiples::Renderable' do 

  before(:each) do 
    @image = MOCK_IMAGE
  end

  describe 'write to disk' do 
    it 'should #write with filename argument'
  end

  describe 'effects' do 
    it 'should create black and white image'
    it 'should'
  end

end