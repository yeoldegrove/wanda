defmodule WandaWeb.Schemas.ExecutionResponse.Value do
  @moduledoc false

  alias OpenApiSpex.Schema

  require OpenApiSpex

  OpenApiSpex.schema(%{
    title: "Value",
    description: "A Value used in the expectations evaluation",
    type: :object,
    properties: %{
      name: %Schema{type: :string, description: "Name"},
      value: %Schema{
        oneOf: [%Schema{type: :string}, %Schema{type: :number}, %Schema{type: :boolean}],
        description: "Value"
      }
    },
    required: [:check_id, :name, :value]
  })
end
