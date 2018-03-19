class Settings::ReleaseInfo < Settingslogic
  source "#{Rails.root}/config/settingslogic/release_info.yml"
  namespace Rails.env
  suppress_errors Rails.env.production?
  load!

  def release
    "#{major}.#{minor}.#{update}.#{patch} #{milestone}"
  end

end
