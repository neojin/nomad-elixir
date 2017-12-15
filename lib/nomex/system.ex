defmodule Nomex.System do
  require Nomex
  require Nomex.Request
  alias Nomex.Request

  Nomex.meta_moduledoc("System", ["https://www.nomadproject.io/api/system.html"])

  def gc do
    Request.request(:put, ["/system/gc", ""])
  end

  def gc! do
    Request.request!(:put, ["/system/gc", ""])
  end
end
