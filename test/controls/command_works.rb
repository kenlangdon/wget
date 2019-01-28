command_test = attribute('command_test', default: 'wget --spider -S "http://www.google.com" 2>&1')

describe bash(command_test) do
  its('stdout') { should match /HTTP\/1.1 200 OK/ }
  its('stderr') { should eq '' }
  its('exit_status') { should eq 0 }
end
