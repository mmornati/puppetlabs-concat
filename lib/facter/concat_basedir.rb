# == Fact: concat_basedir
#
# A custom fact that sets the default location for fragments
#
# "${::vardir}/concat/"
# Moved concat basedir out from /var mountpoint, to prevent problem in
# environments where /var is not executable mountpoint
#
Facter.add("concat_basedir") do
  setcode do
    #File.join(Puppet[:vardir],"concat")
    File.join("/tmp","concat")
  end
end
