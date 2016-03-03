module NetuitiveCookbook
  module Helpers
    def determine_platform
      platform_family = node['platform_family']
      return platform_family
    end

    def determine_version(new_resource, node)
      if new_resource.version
        new_resource.version.to_s
      elsif node['netuitive'] && node['netuitive']['version']
        node['netuitive']['version'].to_s
      else
        raise 'could not determine version of netuitive agent to install'
      end
    end

    def determine_repo_urls(new_resource, node)
      if new_resource.repo_urls
        new_resource.repo_urls.to_h
      elsif node['netuitive'] && node['netuitive']['repo']['urls']
        node['netuitive']['repo']['urls'].to_h
      else
        raise 'could not get a hash of repo_urls'
      end
    end

    def determine_repo_keys(new_resource, node)
      if new_resource.repo_keys
        new_resource.repo_keys.to_h
      elsif node['netuitive'] && node['netuitive']['repo']['keys']
        node['netuitive'] && node['netuitive']['repo']['keys'].to_h
      else
        raise 'could not get a hash of repo_keys'
      end
    end

    def determine_repo_components(new_resource, node)
      if new_resource.repo_components
        new_resource.repo_components.to_h
      elsif node['netuitive'] && node['netuitive']['repo']['components']
        node['netuitive'] && node['netuitive']['repo']['components'].to_h
      else
        raise 'could not get a list of repo_components'
      end
    end
  end
end
