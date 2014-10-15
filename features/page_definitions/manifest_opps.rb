require 'page-object'

class ManifestOpps
  include PageObject
  select_list(:state, class: 'EditField')
  button(:search, text: 'Search')
  def all_opportunities
    [{:title => 'IT Specialist', :location => 'Columbus, OH'},
     {:title => 'IT Operator', :location => 'Cincinnati, Ohio'},
     {:title => 'Solutions Architect', :location => 'Columbus, Ohio'}
    ]
  end
end