using ImageSegmentation, ImageCore, ImageFiltering, Test, SimpleWeightedGraphs, LightGraphs, StaticArrays, DataStructures
using RegionTrees: isleaf, Cell, split!
using MetaGraphs: MetaGraph, clear_props!, get_prop, has_prop, set_prop!, props, vertices

using Documenter
Base.VERSION >= v"1.6" && doctest(ImageSegmentation, manual = false)
@test isempty(detect_ambiguities(ImageSegmentation))

include("core.jl")
include("region_growing.jl")
include("felzenszwalb.jl")
include("fast_scanning.jl")
include("flood_fill.jl")
include("watershed.jl")
include("region_merging.jl")
include("meanshift.jl")
include("merge_segments.jl")
