module Billplz
  class OpenCollection < Model
    
    get  :all, "/open_collections"
    get  :find, "/open_collections/:id"
    post :create, "/open_collections"

  end
end
