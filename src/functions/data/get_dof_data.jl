function get_dof_data(logfile)
  tmp = @chain logfile begin
    select(_, :time,
           :heave__moog_6dof2000e__ => :hv_moog,
           :heave__server_ => :hv_srv,
           :lateral__moog_6dof2000e__ => :ia_moog,
           :lateral__server_ => :ia_srv,
           :surge__moog_6dof2000e__ => :no_moog, 
           :surge__server_ => :no_srv,
           :yaw__moog_6dof2000e__ => :yaw_moog, 
           :yaw__server_ => :yaw_srv,
           :pitch__moog_6dof2000e__ => :pitch_moog,
           :pitch__server_ => :pitch_srv,
           :roll__moog_6dof2000e__ => :roll_moog,
           :roll__server_ => :roll_srv)
    stack(Not(:time), variable_name = :dof_source)
    transform(_, :dof_source => ByRow(x -> split(x, '_')) => [:dof, :source])
    select(_, :time, :dof, :source, :value)

  end
  return tmp
end

