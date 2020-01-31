class Request
  class << self
    
    def get
      response, status = get_json
      status == 200 ? response : errors(response)
    end

    def errors(response)
      error = { errors: { status: response["status"], message: response["message"] } }
      response.merge(error)
    end

    def get_json
      response = api.get
      [JSON.parse(response.body), response.status]
    end

    def api
      Connection.api
    end
  end
end