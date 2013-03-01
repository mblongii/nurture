require 'spec_helper'

describe Plant do

  let(:rose) {Plant.new('Rose')}
  subject {rose}

  describe 'after creation' do
    its(:alive?) {should be_true}
  end

  describe 'when it has no nutrients' do
    before {rose.absorb('nutrients', -1)}
    its(:alive?) {should be_false}
  end

  describe 'when it is not hydrated' do
    before {rose.absorb('hydration', -1)}
    its(:alive?) {should be_false}
  end

  describe 'when it is infested' do
    before {rose.absorb('infestation', 1)}
    its(:alive?) {should be_false}
  end

  describe 'when it is not infested' do
    context 'and it is hydrated' do
      before {rose.absorb('hydration', 1)}
      context 'and it has nutrients' do
        before {rose.absorb('nutrients', 1)}
        its(:alive?) {should be_true}
      end
    end
  end
end
