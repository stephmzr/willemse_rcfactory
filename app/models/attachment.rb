class Attachment < ApplicationRecord
  has_one_attached :pdf

  enum kind: {
      procedure: 0,
      transporteur: 1
  }

  # before_validation :compute_hash

  validates :name, uniqueness: { message: ': Un fichier avec ce nom existe déjà' }
  validates :md5, uniqueness: { message: ': Ce fichier existe déjà' }

  private

  def compute_hash
    self.name = pdf.blob.filename
    self.md5 = pdf.blob.checksum
  end
end
