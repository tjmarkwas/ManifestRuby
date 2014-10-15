require 'page-object'

class ManifestOpps
  include PageObject
  select_list(:state, class: 'EditField')
  button(:search, text: 'Search')
end