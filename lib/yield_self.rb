require "yield_self/version"

module YieldSelf
  def yield_self
    yield(self)
  end

  alias_method :then, :yield_self
end
