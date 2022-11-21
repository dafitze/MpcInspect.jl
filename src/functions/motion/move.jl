function srv_setup()
    login_param = mpc.common_login_params(btn_labels = ["left", "right"],
                                          topic = "pele")

    def_short_session = mpc.short(common_params = login_param,
                                  actustor_mode = "D",
                                  start_height = 670)

    cfg_session = mpc.login(def_short_session)
end

function move_sine(;axis, freq, peak_vel)
    motion = mpc.seq_2_motion([0.0 670.0 0.0 0.0 0.0 0.0 1.0/60.0],
                              axis = axis,
                              steps = mpc.sine_steps(freq, peak_vel))
    center = mpc.motion_template(dof = [0.0 670.0 0.0 0.0 0.0 0.0 1.0/60.0],
                                 law = "S",
                                 max_actuator_speed = 200.0,
                                 rotcenter = mpc.position3d(0.0, 0.0, 0.0))
    mpc.start_short_motion(cfg_session, motion)
    sleep(1 / freq + 0.05)
    mpc.start_short_motion(cfg_session, center)
    sleep(2.05)
end



