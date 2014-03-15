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

      it 'requires a unique name' do
        FactoryGirl.create(:bityee_page, name: 'Foo')
        subject.name = 'Foo'
        expect(subject).to_not be_valid
      end

      context 'path' do
        it 'requires a path' do
          subject.path = nil
          expect(subject).to_not be_valid
        end

        it 'requires a unique path' do
          FactoryGirl.create(:bityee_page, path: 'bar')
          subject.path = 'bar'
          expect(subject).to_not be_valid
        end
        
        ['string', 'String', 'String1', 'some-string', 'some_string'].each do |path|
          it { expect(FactoryGirl.build(:bityee_page, path: path)).to be_valid }
        end

        ['String Gap', 's!llyp@th'].each do |path|
          it { expect(FactoryGirl.build(:bityee_page, path: path)).to_not be_valid }
        end
      end
    end
    
    describe '#set_path' do
      it 'should do things'
    end
  end
end
