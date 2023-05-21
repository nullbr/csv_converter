Versionist.configuration do |config|
  config.versions = [1]
  config.default_version = 1
  config.header_version_enabled = true
  config.header_version_key = 'Accept-Version'
  config.extract_version_from_header_proc = ->(header) { header.gsub('v', '').to_i }
end
