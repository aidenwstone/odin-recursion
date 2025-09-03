# frozen_string_literal: true

def fibs(num)
  fib_sequence = []

  num.times do |curr_num|
    if [0, 1].include?(curr_num)
      fib_sequence.push(curr_num)
    else
      fib_sequence.push(fib_sequence[-1] + fib_sequence[-2])
    end
  end
  fib_sequence
end

def fibs_rec(num)
  return [] if num.zero?
  return [0] if num == 1
  return [0, 1] if num == 2

  sequence = fibs_rec(num - 1)
  sequence << (sequence[-1] + sequence[-2])
end

print 'Please enter a number: '
num = gets.to_i

puts 'Using fibs method:'
p fibs(num)

puts "\nUsing fibs_rec method:"
p fibs_rec(num)
