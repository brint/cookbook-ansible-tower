# Encoding: utf-8

require_relative 'spec_helper'

describe file('/root/.ansible_installed') do
  it { should be_file }
end

describe file('/usr/local/bin/ansible') do
  it { should be_file }
end

describe package('python-pycurl') do
  it { should be_installed }
end

describe package('postgresql') do
  it { should be_installed }
end

describe package('rabbitmq-server') do
  it { should be_installed }
end

describe package('apache2') do
  it { should be_installed }
end

describe port(80) do
  it { should be_listening.with('tcp') }
end

describe port(443) do
  it { should be_listening.with('tcp') }
end
