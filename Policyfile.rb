# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile/

# A name that describes what the system you're building with Chef does.
name 'inspec_test_input_passthru'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'inspec_test_input_passthru::default'

# Specify a custom source for a single cookbook:
cookbook 'inspec_test_input_passthru', path: '.'

default['audit']['reporter'] = 'json-file'
default['audit']['profiles']['profile_wraps_profile_with_inputs'] = {
    'path': 'C:/profile_wraps_profile_with_inputs'
}
default['audit']['json_file']['location'] = "C:/inspec-report.json"

# works
default['audit']['attributes']['caption'] = ''

# works
# default['audit']['attributes'] = {
#     caption: ''
# }

# works
# default['audit']['attributes'] = {
#     'caption' => ''
# }

# doesn't work
# default['audit']['attributes'] = {
#     name: 'caption', value: '', profile: 'profile_with_inputs'
# }
