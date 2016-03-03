class NetutiveCookbook::NetutiveConfigureResource < Chef::Resource::LWRPBase
  resource_name :netutive_configure
  provides :netutive_configure

  actions :create
  default_action :create

  attribute(:api_key, kind_of: String, default: 'CHANGE_ME')
  attribute(:conf_path, kind_of: String, default: '/opt/netuitive-agent/netuitive/conf/netuitive-agent.conf')
  attribute(:cookbook_template, kind_of: String, default: 'netuitive')
  # anything that is not in the template can be added to a seperate config that should be merged
  # a hash with the key and value
  attribute(:custom_config_path, kind_of: String, default: '/opt/netuitive-agent/netuitive/conf/custom_config.conf')
  attribute(:custom_vars, kind_of: Hash, default: nil)
  attribute(:source, kind_of: String, default: 'netuitive-agent.conf.erb')
end
