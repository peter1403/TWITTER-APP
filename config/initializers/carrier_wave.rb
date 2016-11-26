if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_KEY'],
      :path_style            => true
    }
    config.fog_directory     =  "https://final.sample.ruby.app.image.upload.s3-website-eu-west-1.amazonaws.com"
  end
end
