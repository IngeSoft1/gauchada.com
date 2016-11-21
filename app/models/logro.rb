class Logro < ActiveRecord::Base
  default_scope -> { order("valor_max desc") }
end
