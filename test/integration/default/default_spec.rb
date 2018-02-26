case os[:family]
when 'windows'
  describe command('atom -v') do
    its(:exit_status) { should eq 0 }
    its(:stderr) { should eq '' }
  end

  describe command('/users/vagrant/appdata/local/atom/bin/apm.cmd list') do
    its(:stdout) { should match /linter@/ }
    its(:stdout) { should_not match /linter-rubocop@/ }
  end
when 'debian'
  describe apt('http://ppa.launchpad.net/webupd8team/atom/ubuntu') do
    it { should exist }
    it { should be_enabled }
  end

  describe package('atom') do
    it { should be_installed }
  end

  describe command('apm list --installed') do
    its(:stdout) { should match /^linter@/ }
    its(:stdout) { should_not match /^linter-rubocop@/ }
  end
end
