module ErrorSerializer
  class Resources
    def self.serialized_json(resource)
      errors = resource.errors.messages.map do |field, errors|
        errors.map do |error_message|
          {
            status: 400,
            source: {pointer: "/data/attributes/#{field}"},
            detail: error_message
          }
        end
      end

      errors.flatten
    end
  end
end
