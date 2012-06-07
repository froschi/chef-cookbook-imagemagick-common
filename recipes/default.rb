packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    
  /
when "precise"
  packages |= %w/
    
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
