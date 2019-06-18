module HappyNumber
  VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}

  def happy?
    sum = self.digits.map(&.** 2).sum
    sum == 1 || sum > 6 && sum.happy?
  end

  def unhappy?
    !happy?
  end

  def sad?
    unhappy?
  end

  def digits
    self.abs.to_s.chars.map &.to_u8
  end
end

require "./uint8"
require "./uint16"
require "./uint32"
require "./uint64"
require "./uint128"
require "./range"
