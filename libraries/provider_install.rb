class NetuitiveCookbook::NetuitiveInstallProvider < Chef::Provider::LWRPBase
  include NetuitiveCookbook::Helpers
  provides :netuitive_install

  action :install do
    package new_resource.package_name
  end
end
