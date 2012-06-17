# -*- coding: utf-8 -*-
require 'parallel_runner_helper'

describe 'parallel_runner' do
  it "Iterate list in parallel" do
    list.each_parallel do |val|
      val.should_not be_empty
    end
  end
  
  it "Iterate list with index in parallel" do
    list.each_parallel do |val, index|
      val.should_not be_empty
      index.to_s.should match(/^\d$/)
    end
  end
  
  it "Iterate map in parallel" do
    map.each_parallel do |key, value|
      key.should_not be_empty
      value.should_not be_empty
    end
  end
  
  it "faster than Array#each" do
    time_by_each.should be > time_by_each_parallel
  end
  
  it "faster than Array#each_with_index" do
    time_by_each_with_index.should be > time_by_each_parallel
  end
  
  it "faster than Hash#each" do
    time_by_each_by_map.should be > time_by_each_parallel
  end
end