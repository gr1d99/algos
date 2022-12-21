class Palindrome
  def new; end

  def is_palindrome(x)
    x_to_str = x.to_s
    x_to_str_to_reverse = x_to_str.reverse
    x_to_str_to_reverse.eql? x_to_str
  end
end
