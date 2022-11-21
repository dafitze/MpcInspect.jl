module MpcInspect

using CSV, DataFrames, CairoMakie, Chain, mpc

include("functions/plot/disp.jl")
include("functions/plot/dof_plot.jl")
include("functions/data/read_log.jl")
include("functions/data/get_dof_data.jl")

include("functions/motion/move.jl")

end # module MpcInspect
