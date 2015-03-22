class Post < ActiveRecord::Base
	# Membuat relasi dengan table comment dan jika dihapus post maka semua comment yang terkait akan terhapus
	# Jenis relasi 1 post memiliki banyak comment (has_many)
	has_many :comments, dependent: :destroy

	validates :title, :body, presence: true
end
