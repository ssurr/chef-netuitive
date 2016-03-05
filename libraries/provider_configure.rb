class NetuitiveCookbook::NetuitiveConfigureProvider < Chef::Provider::LWRPBase
  include NetuitiveCookbook::Helpers
  provides :netuitive_configure

  use_inline_resources

  action :create do
    # the default template for netuitive with your API key
    template new_resource.conf_path do
      source new_resource.source
      cookbook new_resource.cookbook_template
      variables(
        api_key: new_resource.api_key
      )
      notifies :restart, 'service[netuitive-agent]'
    end
    service 'netuitive-agent' do
      init_command '/etc/init/netuitive-agent.conf'
      subscribes :restart, new_resource.conf_path.to_s
    end
  end
end
