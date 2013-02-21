module LsatTestHelper
  def make_presentable(str)
    str.split(/_/).map! { |x| x.capitalize }.join(" ")
  end
end
