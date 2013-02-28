require 'spec_helper'

describe Plant do

  let(:rose) {Plant.new('Rose')}
  subject {rose}

  describe '#alive?' do
    its(:alive?) {should be_true}
  end
end
