class NetutiveCookbook::NetutiveConfigureProvider < Chef::Provider::LWRPBase
  include NetutiveCookbook::Helpers
  provides :netutive_configure

  action :create do
    # the default template for netuitive with your API key
    template new_resource.conf_path do
      source new_resource.source
      cookbook new_resource.cookbook_template
      variables(
        api_key: new_resource.api_key
      )
    end
    service 'netuitive-agent' do
      init_command '/opt/netuitive-agent/netuitive/init.d/netuitive-agent-lsb'
      subscribes :restart, new_resource.conf_path.to_s
    end
  end
end
