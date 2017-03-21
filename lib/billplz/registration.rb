module Billplz
  class Registration < Model

    get :check, "/check/bank_account_number/:account_number"

  end
end
