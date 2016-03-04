# version
default['netuitive']['version'] = '0.2.3-70'

# do we want to add a repo?
default['netuitive']['add_repo'] = true

# repo_urls
default['netuitive']['repo']['urls'] = {
  'debian' => 'https://repos.app.netuitive.com/deb/',
  'rhel' => 'https://repos.app.netuitive.com/rpm/noarch'
}

# repo keys to import
default['netuitive']['repo']['keys'] = {
  'debian' => 'https://repos.app.netuitive.com/netuitive.gpg',
  'rhel' => 'https://repos.app.netuitive.com/RPM-GPG-KEY-netuitive'
}

# repo components
default['netuitive']['repo']['components'] = {
  'debian' => ['stable', 'main']
}

# # package manager_options
# default['netuitive']['pkg_mgr']['options'] = {
#   'debian' => '--force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confnew"'
# }
