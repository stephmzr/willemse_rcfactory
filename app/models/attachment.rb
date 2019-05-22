class Attachment < ApplicationRecord
  has_attached_file :file
  validates_attachment :file, presence: true
  do_not_validate_attachment_file_type :file


  enum kind: {
      procedure: 1,
      transport: 2,
      interaction: 3
  }

  belongs_to :interaction, optional: true

  validates :file_file_name, uniqueness: { message: ': Un fichier avec ce nom existe déjà' }
  validates :file_fingerprint, uniqueness: { message: ': Ce fichier existe déjà' }
end