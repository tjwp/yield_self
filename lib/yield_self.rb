require "yield_self/version"

module YieldSelf
  def yield_self
    yield(self)
  end
end
