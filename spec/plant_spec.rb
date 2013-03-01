require 'spec_helper'

describe Plant do

  let(:rose) {Plant.new('Rose')}
  subject {rose}
  positive_range = 1..1
  negative_range = -1..-1

  describe 'after creation' do
    its(:alive?) {should be_true}
  end

  describe 'when it has no nutrients' do
    let(:nutrients) {Dropper.new('nutrients', negative_range)}
    before {rose.absorb(nutrients)}
    its(:alive?) {should be_false}
  end

  describe 'when it is not hydrated' do
    let(:hydration) {Dropper.new('hydration', negative_range)}
    before {rose.absorb(hydration)}
    its(:alive?) {should be_false}
  end

  describe 'when it is infested' do
    let(:infestation) {Dropper.new('infestation', positive_range)}
    before {rose.absorb(infestation)}
    its(:alive?) {should be_false}
  end

  describe 'when it is not infested' do
    context 'and it is hydrated' do
      let(:hydration) {Dropper.new('hydration', positive_range)}
      before {rose.absorb(hydration)}
      context 'and it has nutrients' do
        let(:nutrients) {Dropper.new('nutrients', positive_range)}
        before {rose.absorb(nutrients)}
        its(:alive?) {should be_true}
      end
    end
  end
end
