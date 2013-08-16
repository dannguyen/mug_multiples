require 'spec_helper'

describe 'basic SourceImage' do 

  before(:each) do 
    @fname = PIMGS.first
    @source_image = SourceImage.new(@fname)
  end

  it 'should be have faces (no dimension restriction)' do 
    expect(@source_image.faces.count).to eq 4
  end

  it 'should have an array of Face objects' do 
    expect(@source_image.faces.first).to be_a MugMultiples::Face
  end

end