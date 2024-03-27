# frozen_string_literal: true

# app/graphql/orders_app_schema.rb
class OrdersAppSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end