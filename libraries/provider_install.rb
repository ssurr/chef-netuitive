class NetutiveCookbook::NetutiveInstallProvider < Chef::Provider::LWRPBase
  include NetutiveCookbook::Helpers
  provides :netutive_install

  action :install do
    package new_resource.package_name
  end
end
