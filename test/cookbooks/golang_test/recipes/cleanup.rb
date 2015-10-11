directory 'go-directory' do
  action :nothing
  path "#{node['go']['install_dir']}/go"
  recursive true
  subscribes :delete, 'chef_handler[MiniTest::Chef::Handler]', :immediately
end

# # directory "#{node['go']['install_dir']}/go-bootstrap" do
# #   action :nothing
# #   recursive true
# # end
