# frozen_string_literal: true

# app/graphql/types/order_type.rb
module Types
  class OrderType < Types::BaseObject
    field :id, ID, null: false
    field :full_name, String, null: false
    field :address, String, null: false
    field :status, String, null: false
    field :item_name, String, null: false
    field :total, Integer, null: false
  end
end
