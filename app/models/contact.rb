class Contact < ActiveRecord::Base
  def self.all_johns
    self.all.each { |contact| puts contact.name if /John/ =~ contact.name }
  end

end
