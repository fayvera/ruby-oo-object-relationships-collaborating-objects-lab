require 'pry'

class MP3Importer
    attr_accessor :path

@@all = []    
    def initialize(path)
        @path = path
    end

    def files
        @files = Dir.entries(@path)
        @files.delete_if {|file| file == "." || file == ".."}
    end

    def import
        # binding.pry
        self.files.each {|files| Song.new_by_filename(files)}
    end
end