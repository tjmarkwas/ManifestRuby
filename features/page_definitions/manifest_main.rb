require 'page-object'

class ManifestMain
  include PageObject
  page_url "manifestcorp.com"
  link(:news,text: "NEWS")
  link(:opportunities,text: "OPPORTUNITIES")
end

