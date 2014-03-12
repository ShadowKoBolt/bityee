class Bityee::Section

  include Mongoid::Document

  field :name

  embedded_in :page, class_name: 'Bityee::Page'

end
