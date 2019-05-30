struct Range(B, E)
  def happy
    self.select &.happy?
  end

  def unhappy
    self.select &.unhappy?
  end

  def sad
    unhappy
  end
end
