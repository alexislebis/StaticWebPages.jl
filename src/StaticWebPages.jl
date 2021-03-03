module StaticWebPages

using FTPClient, DataStructures, GitHub

using Gtk

import Base.show

import Bibliography
import Bibliography: bibtex_to_web, Publication

export export_site, upload_site, paragraphs, images
export AbstractItem, Block, Card, TimeLine, GitRepo
export CardColor, TimeLineColor

export ui

function load_example()
    include(joinpath(@__DIR__,"..","example","content.jl"))
end

include("constant.jl")
include("inline.jl")
include("items.jl")
include("skeleton.jl")
include("page.jl")
include("io.jl")
include("ui.jl")

end # module StaticWebPages
