module Billplz
  class Bill < Model

    get :find, "/bills/:id"
    get :transactions, "/bills/:bill_id/transactions"
    post :create, "/bills"
    delete :delete, "/bills/:id"

  end
end
