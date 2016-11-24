class Gauchada < ActiveRecord::Base
    default_scope -> { order("created_at desc") }
    has_many :comentarios
    has_many :postulacions
end
