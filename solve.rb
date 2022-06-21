#!/usr/bin/env ruby

def fac(n)
  if n <= 1 then 1
  else n * fac(n - 1)
  end
end

def choose(from, n)
  fac(from) / fac(n) / fac(from - n)
end

def calc(n)
  11.upto(n) do |i|
    c = choose(i, 11) * choose(i, 8) / choose(2 * i, 19).to_f
    puts "#{i}: #{c}"
  end
end

calc(30)
