class Array
  def all_empty?
    self.all? {|el| el.to_s.empty?}
  end

  def all_same?
    self.all? {|el| self[0] == el}
  end

  def any_empty?
    self.any? {|el| el.to_s.empty?}
  end

  def none_empty?
    self.none? {|el| el.to_s.empty?}
  end
end
