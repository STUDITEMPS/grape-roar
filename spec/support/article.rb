require 'support/article_representer'

class Article
  include Roar::JSON
  include ArticleRepresenter

  attr_accessor :title, :id

  def initialize(attrs = {})
    attrs.each_pair do |k, v|
      send("#{k}=", v)
    end
  end
end
