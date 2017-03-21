module Billplz
  class RegistrationCheck < Model

    get :find, "/check/bank_account_number/:id"

  end
end
