FactoryGirl.define do
  factory(:image) do
    description 'A picture'
    image Rack::Test::UploadedFile.new("#{Rails.root}/spec/fixtures/images/flowers.jpg", "image/jpg")
  end
end
