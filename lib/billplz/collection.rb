module Billplz
  class Collection < Model

    get  :all, "/collections"
    get  :find, "/collections/:id"
    post :create, "/collections"
    post :deactivate, "/collections/:id/deactivate"
    post :activate, "/collections/:id/activate"


  end
end
