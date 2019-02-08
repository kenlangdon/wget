command_path = attribute('command_path', default: '/bin/wget')

describe file(command_path) do
  it { should exist }
end

