# Encoding: utf-8

require_relative 'spec_helper'

describe 'ansible-tower::default' do
  before { stub_resources }
  describe 'ubuntu' do
    let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

    it 'should install packages' do
      pending 'adding tests'
    end

  end
end
