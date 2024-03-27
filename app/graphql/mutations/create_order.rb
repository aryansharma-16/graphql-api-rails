# frozen_string_literal: true

# app/graphql/mutations/create_order.rb
module Mutations
  class CreateOrder < BaseMutation
    argument :full_name, String, required: true
    argument :address, String, required: true
    argument :status, String, required: true
    argument :item_name, String, required: true
    argument :total, Integer, required: false

    field :order, Types::OrderType, null: false
    field :errors, [String], null: false

    def resolve(full_name:, address:, status:, item_name:, total:)
      order = Order.create!(
      	full_name: full_name,
      	address: address,
      	status: status,
      	item_name: item_name,
      	total: total
      )
		  { order: order, errors: [] }
    rescue ActiveRecord::RecordInvalid => errors
			errors.record.errors.full_messages.map do |message|
        GraphQL::ExecutionError.new(message)
      end
    end
  end
end
