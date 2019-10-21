# frozen_string_literal: true

require 'spec_helper'
require './lib/media_sorter'

describe ::MediaSorter do
  let(:proper_dir) { './spec/fixtures/proper_dir' }

  describe '#initialize' do
    context 'wrong initialization' do
      it 'raises an exception' do
        expect {
          described_class.new
        }.to raise_error(ArgumentError)
      end
    end

    context 'proper initialization' do
      subject { described_class.new(proper_dir) }

      it { is_expected.to be_a_kind_of(described_class) }
    end
  end

  describe '#valid?' do
    subject { described_class.new(target_path).valid? }

    context 'when passed wrong target path' do
      context 'when target path is nil' do
        it 'raises an exception' do
          expect {
            described_class.new(nil).valid?
          }.to raise_error(WrongTargetPathError)
        end
      end

      context 'when not existing path' do
        let(:target_path) { './spec/fixtures/fake_path' }

        it { is_expected.to be_falsey }
      end

      context 'when provided path is file (not directory)' do
        let(:target_path) { './spec/fixtures/file_path' }

        it { is_expected.to be_falsey }
      end
    end

    context 'when passed target path is correct' do
      let(:target_path) { proper_dir }

      it { is_expected.to be_truthy }
    end
  end

  # describe '#sort!' do
  #   let(:new_folder) { "./#{proper_dir}_sorted" }

  #   before do
  #     described_class.new(proper_dir).sort!
  #   end

  #   it 'creates new folder and adds month based folders into it' do 
  #     expect(
  #       Dir.exists?(new_folder)
  #     ).to be_truthy
  #   end
  # end
end
