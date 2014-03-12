require 'spec_helper'

module Bityee
  describe Page do
    context 'validations' do
      subject { FactoryGirl.create(:bityee_page) }

      it 'should have a valid factory' do
        expect(subject).to be_valid
      end

      it 'requires a name' do
        subject.name = nil
        expect(subject).to_not be_valid
      end

      it 'requires a path' do
        subject.path = nil
        expect(subject).to_not be_valid
      end
    end
  end
end
