class Client < ApplicationRecord
  has_many :payments
  has_many :payment_types, :through => :payments

  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :cedula, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :telefono, presence: true, numericality: true
  validates :nacimiento, presence: true
  validates :direccion, presence: true

  has_attached_file :foto,:styles => {
      :thumb => "100x100#",
      :small  => "150x150>",
      :medium => "200x200" }
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
end
