require "ruby_cop"
class CodeRestrictionPolicy
  def valid?(code)
    policy = RubyCop::Policy.new
    ast = RubyCop::NodeBuilder.build(code)
    ast.accept(policy)
  end
end
