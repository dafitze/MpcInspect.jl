function dof_plot(f = Figure(); data, display = true) #, dof, source)


  lines(f[1,1], data.time, data.value, axis = (title = "Titel",))

  #if dof == 

  #  if dof == "linear"
  #    lines(f[1,1], d.time, d.hv_moog, axis = (title = "HV",))
  #    lines!(f[1,1], d.time, d.hv_srv)
  #    lines(f[2,1], d.time, d.ia_moog, axis = (title = "IA",))
  #    lines!(f[2,1], d.time, d.ia_srv)
  #    lines(f[3,1], d.time, d.no_moog, axis = (title = "NO",))
  #    lines!(f[3,1], d.time, d.no_srv)
  #  elseif dof == "angular"
  #    lines(f[1,1], d.time, d.yaw_moog, axis = (title = "Yaw",))
  #    lines!(f[1,1], d.time, d.yaw_srv)
  #    lines(f[2,1], d.time, d.pitch_moog, axis = (title = "Pitch",))
  #    lines!(f[2,1], d.time, d.pitch_srv)
  #    lines(f[3,1], d.time, d.roll_moog, axis = (title = "Roll",))
  #    lines!(f[3,1], d.time, d.roll_srv)
  #  elseif dof == "all"
  #    lines(f[1,1], d.time, d.hv_moog, axis = (title = "HV",))
  #    lines!(f[1,1], d.time, d.hv_srv)
  #    lines(f[2,1], d.time, d.ia_moog, axis = (title = "IA",))
  #    lines!(f[2,1], d.time, d.ia_srv)
  #    lines(f[3,1], d.time, d.no_moog, axis = (title = "NO",))
  #    lines!(f[3,1], d.time, d.no_srv)

  #    lines(f[1,2], d.time, d.yaw_moog, axis = (title = "Yaw",))
  #    lines!(f[1,2], d.time, d.yaw_srv)
  #    lines(f[2,2], d.time, d.pitch_moog, axis = (title = "Pitch",))
  #    lines!(f[2,2], d.time, d.pitch_srv)
  #    lines(f[3,2], d.time, d.roll_moog, axis = (title = "Roll",))
  #    lines!(f[3,2], d.time, d.roll_srv)
  #  end
  #elseif typeof(dof) == Int
  #  lines(f[1,1], d.time, d.yaw_moog, axis = (title = dof,))
  #end
  f
  if display
    disp(f)
  end
  return f
end

