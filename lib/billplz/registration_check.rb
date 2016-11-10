module Billplz
  class RegistrationCheck < Model
    before_request :set_base_url
    #before_request :replace_body

    get :find, "/:id"

    private

    def set_base_url(name, request)
      Flexirest::Base.base_url = "#{Billplz.configuration.api_url}/check/bank_account_number"
    end

  end
end
