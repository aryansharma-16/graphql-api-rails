# spec/support/graphql_helper.rb

module GraphQLHelper
  def sanitize_arg(value)
    value = value.to_s unless value.is_a?(String)
    ActionController::Base.helpers.sanitize(value)
  end

  def camelize_keys(hash)
    hash.transform_keys { |key| key.to_s.camelize(:lower) }
  end
end
