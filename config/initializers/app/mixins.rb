class String
  
  # To test is a string is an interger - like an ID
  # http://stackoverflow.com/questions/1286870/ruby-implementation-is-numeric-for-strings-need-better-alternatives
  
  def integer?
    self.to_i.to_s == self
  end
  
  def cap_words
    self.split(' ').map {|w| w.capitalize }.join(' ')
  end

  def tagify
    self.strip.lstrip.downcase.gsub(" ", "_").gsub(/[^0-9a-z_]/i, '')
  end
 
   def nl2br
    self.gsub(/\n/, '<br/>')
   end

  def ununderscore
    self.gsub("_", " ")
  end

  # From .../app/concerns/sanitizable
  def fumigate
    full_sanitizer = Rails::Html::FullSanitizer.new
    full_sanitizer.sanitize(self)
  end

end
