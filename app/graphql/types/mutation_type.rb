# frozen_string_literal: true

# app/graphql/types/mutation_type.rb
module Types
  class MutationType < Types::BaseObject
    field :create_order, mutation: Mutations::CreateOrder
  end
end
