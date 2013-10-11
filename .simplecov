SimpleCov.use_merging true

SimpleCov.start do
  merge_timeout 3600

  # Filters
  add_filter 'spec'
  add_filter 'vendor'

 # Groups
#  add_group 'Config',   'config'
#  add_group 'Data',     'app/data'
#  add_group 'Roles',    'app/roles'
#  add_group 'Contexts', 'app/contexts'
end
