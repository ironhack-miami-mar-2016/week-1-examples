candies = {
  :chocolate => {
    :brands => [
      {
        :products => [
          0,
          1,
          { :name => "Kit Kat" }
        ]
      }
    ]
  }
}

puts candies[:chocolate][:brands][0][:products][2][:name] # "Kit Kat"
