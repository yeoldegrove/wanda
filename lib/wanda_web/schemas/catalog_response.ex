defmodule WandaWeb.Schemas.CatalogResponse do
  @moduledoc """
  Checks catalog response API spec
  """

  alias OpenApiSpex.Schema
  alias WandaWeb.Schemas.CatalogResponse.Check

  require OpenApiSpex

  OpenApiSpex.schema(%{
    title: "CatalogResponse",
    description: "Checks catalog listing response",
    type: :object,
    properties: %{
      items: %Schema{type: :array, description: "List of catalog checks", items: Check}
    }
  })
end
