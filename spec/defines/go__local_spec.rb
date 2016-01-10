require "spec_helper"

describe "go::local" do
  let(:default_params) do
    {
      :ensure  => "present",
      :version => "1.5.2"
    }
  end

  let(:facts) { default_test_facts }
  let(:title) { "/path/to/wherever" }
  let(:params) { default_params }

  it do
    should include_class("go::1_5_2")

    should contain_file("/path/to/wherever/.go-version").with({
      :ensure  => "present",
      :content => "1.5.2\n",
      :replace => true
    })
  end

  context "ensure => absent" do
    let(:params) { default_params.merge(:ensure => "absent") }

    it do
      should_not include_class("go::1_5_2")

      should contain_file("/path/to/wherever/.go-version").with({
        :ensure => "absent"
      })
    end
  end
end
