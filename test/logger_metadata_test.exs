defmodule LoggerMetadataTest do
  use ExUnit.Case
  require Logger

  defmodule UnSerializable do
    defstruct [:id]
  end

  test "logger crashes when printing metadata" do
    Enum.each(1..10, fn cnt ->
      Logger.info("#{cnt}", event: %UnSerializable{id: cnt})
    end)
  end
end
