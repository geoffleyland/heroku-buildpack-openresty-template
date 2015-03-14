return
{
  reverse = function(s)
      local reverse = {}
      for i = #s, 1, -1 do
        reverse[#reverse+1] = s:sub(i, i)
      end
      return table.concat(reverse)
    end
}
