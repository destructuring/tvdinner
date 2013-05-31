cookbook_file "#{node[:release_dir]}/LICENSE" do
  mode 00644
  source "LICENSE"
end
