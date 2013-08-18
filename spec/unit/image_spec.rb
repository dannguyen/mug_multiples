require 'spec_helper'

describe MugMultiples::Image do

  context 'initialization' do 

    before(:each) do 
      @filename = PIMGS.first
    end

    context 'with a String' do
      it 'should set :filename' do 
        expect(Image.new(@filename).filename).to eq @filename
      end

      it 'should be fail if @filename doesnt exist' do 
        expect{Image.new('somefile.jpg')}.to raise_error ArgumentError
      end

      it 'should be able to load a proper #cv_image_object' do 
        @image = Image.new(@filename)
        expect(@image.cv_image_object).to be_a OpenCV::CvMat
      end
    end

    context 'with a OpenCV::CvMat' do 
      it 'should have #cv_image_object set' do 
        @cvobj = Image.new(@filename).cv_image_object
        expect(Image.new(@cvobj).cv_image_object).to eq @cvobj
      end
    end
  end

  context 'include Detectable' do 

    before(:each) do 
      @filename = PIMGS.first
      @image = Image.new(@filename)
    end

    it 'should detect_objects'

  end

  context 'include Renderable' do 
    before(:each) do 
      @filename = PIMGS.first
      @image = Image.new(@filename)
    end

    it 'should write to disk'

  end


end