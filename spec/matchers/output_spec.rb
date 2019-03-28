RSpec.describe 'Matcher output.to_stdout, to_stderr' do
  # STDOUT
  it { expect { puts('Exit') }.to output.to_stdout }
  it { expect { puts('Exit') }.to output("Exit\n").to_stdout }
  it { expect { puts('Exit now') }.to output(/Exit/).to_stdout }
  it { expect {}.to_not output.to_stdout }
  it { expect { puts('Exit') }.to_not output(/Exits/).to_stdout }

  # STDERR
  it { expect { warn('Error') }.to output.to_stderr }
  it { expect { warn('Error') }.to output("Error\n").to_stderr }
  it { expect { warn('Error app') }.to output(/Error/).to_stderr }
  it { expect {}.to_not output.to_stderr }
  it { expect { warn('Error') }.to_not output(/Errou/).to_stderr }
end
