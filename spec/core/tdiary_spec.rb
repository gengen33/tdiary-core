require 'spec_helper'
require 'fileutils'

describe TDiary do
  describe 'LOAD_PATH' do
    before do
      @root_path = File.expand_path(File.dirname(__FILE__) + '/../..')
      @loaded_paths = $LOAD_PATH.map{|path| File.expand_path(path)}
    end

    it "include misc path into load path" do
      expect(@loaded_paths).to be_include @root_path + '/misc/lib'
    end
  end
end