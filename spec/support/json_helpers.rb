module RSpec::JSONHelpers
  def json
    @json ||= JSON.parse(response.body)
  end
end
