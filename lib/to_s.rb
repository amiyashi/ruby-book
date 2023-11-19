# %q! ! はシングルクオートで囲んだことと同じになる
puts %q!He said, "Don't speak."!
# %Q! ! はダブルクオートで囲んだことと同じになる
something = "Hello."
 puts %Q!He said, "#{something}"!
# %! ! もダブルクオートで囲んだことと同じになる
something = "Bye."
 puts %!He said, "#{something}"!
 
 
# ?を区切り文字として使う
puts %q?He said, "Don't speak."?
# {}を区切り文字として使う
puts %q{He said, "Don't speak."}


# 文字列を途中で改行する
puts "Line 1,
Line 2"

puts 'Line 1,
Line 2'

# 複数行の長い文字列はヒアドキュメントを使った方がスッキリする
a = <<TEXT
これはヒアドキュメントです。
複数行にわたる長い文字列を作成するのに便利です。
TEXT
puts a

# <<-TEXTのように-を入れると、最後の識別子をインデントさせることが出来る
def some_method
  <<-TEXT
これはヒアドキュメントです。
<<-を使うと最後の識別子をインデントさせることができます。
  TEXT
end

puts some_method

# <<~TEXTのように~を入れると、内部の文字列をインデントさせても先頭の空白部分が無視される
def some_method
  <<~TEXT
これはヒアドキュメントです。
<<~を使うと内部の文字列のインデント部分が無視されます。
  TEXT
end

puts some_method


# <<~を使いつつ、すべての行頭に半角スペースを入れたい場合は、バックスラッシュ（\）を使って行頭指定できる
def some_method
  <<~TEXT
  \  各行の行頭に半角スペースを2文字入れます。
  \  この時行頭はバックスラッシュで指定します。
  TEXT
end

puts some_method