require 'spec_helper'

describe Plant do

  let(:rose) {Plant.new('Rose')}
  subject {rose}

  context 'after creation a rose should be alive' do
    its(:alive?) {should be_true}
  end
end
