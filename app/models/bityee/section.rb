class Bityee::Section

  include Mongoid::Document

  field :name

  has_and_belongs_to_many :page, class_name: 'Bityee::Page'

end
