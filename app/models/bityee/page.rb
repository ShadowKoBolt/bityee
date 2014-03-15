class Bityee::Page

  include Mongoid::Document

  field :name
  field :path
  field :meta_title
  field :meta_description

  has_and_belongs_to_many :sections, class_name: 'Bityee::Section'

  validates :name, :path, presence: true, uniqueness: true
  validates :path, format: {with: /\A[\w_-]+\Z/, message: 'can only contain letters and numbers (spaces should be denoted with - or _)'}

  before_validation :set_path

  def set_path
        
  end

end
