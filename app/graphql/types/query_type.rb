# frozen_string_literal: true

# app/graphql/types/query_type.rb
module Types
  class QueryType < Types::BaseObject
    field :orders, [Types::OrderType], null: false do
      argument :status, String, required: false
    end

    def orders(status: nil)
      status ? Order.where(status: status).order_by_id : Order.order_by_id
    end
  end
end
