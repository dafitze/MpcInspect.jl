function read_log(path)
  tmp = CSV.read(path, DataFrame) 
  return tmp
end
