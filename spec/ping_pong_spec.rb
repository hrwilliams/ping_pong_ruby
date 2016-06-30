require('rspec')
require('ping_pong')

describe('Fixnum') do
  it("counts up to number provided") do
    expect((2).ping_pong()).to(eq([1,2]))
  end
  it("when counting, replaces all multiples of 3 with ping") do
    expect((7).ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7]))
  end
  it("when counting, replaces all multiples of 5 with pong") do
    expect((11).ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11]))
  end
  it("when counting, replaces all multiples of 15 with pingpong") do
    expect((16).ping_pong()).to(eq([1, 2, "ping", 4, "pong", "ping", 7, 8, "ping", "pong", 11, "ping", 13, 14, "pingpong", 16]))
  end
end
