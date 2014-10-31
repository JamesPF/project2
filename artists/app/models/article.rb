class Article
  include Mongoid::Document
  field :date, type: String
  field :title, type: String
  field :content, type: String
end
