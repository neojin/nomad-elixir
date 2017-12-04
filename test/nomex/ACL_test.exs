defmodule Nomex.ACLTest do
  use ExUnit.Case
  use ExVCR.Mock, adapter: ExVCR.Adapter.Hackney


  test "policies with ACL support disabled" do
    use_cassette "ACL/policies/acl_disabled" do
      { :ok, response } = Nomex.ACL.policies

      assert response.status_code == 500
      assert response.body.error == "ACL support disabled"
    end
  end
end
