class Bityee::Page

  include Mongoid::Document

  field :name
  field :path
  field :meta_title
  field :meta_description

  embeds_many :sections, class_name: 'Bityee::Section'

  validates :name, presence: true
  validates :path, presence: true

  before_validation :set_path

  def set_path
    
  end

end
