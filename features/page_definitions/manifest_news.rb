require 'page-object'

class ManifestNews
  include PageObject
  table(:news, class:'specialtable')
  def all_news
    {'10/10/14' => 'This is First News',
     '10/11/14' => 'This is News Too'}
  end
end