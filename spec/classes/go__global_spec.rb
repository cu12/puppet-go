require "spec_helper"

describe "go::global" do
  let(:facts) { default_test_facts }
  let(:params) do
    {
      :version => "1.5.2"
    }
  end

  it do
    should include_class("go")
    should include_class("go::1_5_2")

    should contain_file("/test/boxen/chgo/version").with({
      :content => "1.5.2\n",
    })
  end
end
