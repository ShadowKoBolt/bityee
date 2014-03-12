require 'spec_helper'

module Bityee
  describe Section do
    context 'validations' do
      subject { FactoryGirl.create(:bityee_section) }

      it 'should have a valid factory' do
        expect(subject).to be_valid
      end
    end
  end
end
