class NetuitiveCookbook::NetuitiveRepoProvider < Chef::Provider::LWRPBase
  include NetuitiveCookbook::Helpers
  provides :netuitive_repo

  action :add do
    platform = determine_platform
    unless new_resource.version
      new_resource.version determine_version(new_resource, node)
    end
    unless new_resource.repo_urls
      new_resource.repo_urls determine_repo_urls(new_resource, node)
    end
    unless new_resource.repo_keys
      new_resource.repo_keys determine_repo_keys(new_resource, node)
    end
    unless new_resource.repo_components
      new_resource.repo_components determine_repo_components(new_resource, node)
    end

    case platform
    when 'debian'
      include_recipe 'apt'
      # add repo and key
      apt_repository 'netuitive' do
        uri new_resource.repo_urls['debian']
        key new_resource.repo_keys['debian']
        components new_resource.repo_components['debian']
        action :add
      end

      # set apt pin priority
      apt_preference 'netuitive' do
        pin 'version ' + new_resource.version
        pin_priority '700'
      end
    when 'rhel', 'fedora'
      raise 'Not implemented yet!'
    end
  end
end
