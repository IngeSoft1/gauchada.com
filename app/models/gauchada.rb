class Gauchada < ActiveRecord::Base
    default_scope -> { order("created_at desc") }
    has_many :comentarios
    has_many :postulacions

    scope :lugar, ->(busqueda){where('lower(ubicacion) like lower(?)',"%#{busqueda}%")}
    scope :titulo_descripcion, ->(busqueda){where('lower(titulo) like lower(?) or lower(descripcion) like lower(?)',"%#{busqueda}%","%#{busqueda}%")}

end
