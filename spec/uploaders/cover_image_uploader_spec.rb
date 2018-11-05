require 'rails_helper'

RSpec.describe CoverImageUploader do
  it 'allowes only images' do
    uploader = CoverImageUploader.new(Achievement.new, :cover_image)

    expect {
      File.open("#{Rails.root}/spec/fixtures/empty_pdf.pdf") do |file|
        uploader.store!(file)
      end
    }.to raise_exception(CarrierWave::IntegrityError)
  end
end
