### A Pluto.jl notebook ###
# v0.14.5

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : missing
        el
    end
end

# ╔═╡ aa52e565-c603-4adc-ae2a-a21da99f8865
begin
	let
       env = mktempdir()
       import Pkg
       Pkg.activate(env)
       Pkg.Registry.update()
       Pkg.add(Pkg.PackageSpec(;name="PlutoUI", version="0.7"))
	   Pkg.add(Pkg.PackageSpec(;name="HypertextLiteral", version="0.7"))
    end
    using PlutoUI
	using HypertextLiteral
end

# ╔═╡ 395ad583-ff7a-4357-ab4d-cdc4eaa2a1a1
md"Code in cells below"

# ╔═╡ 1a712530-882e-416f-9814-97d285e5ec8e
begin
	img_url_list = Tuple{String,String}[];
	push!(img_url_list,("https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Chin_posing.jpg/998px-Chin_posing.jpg","Hello"))
    push!(img_url_list,("https://upload.wikimedia.org/wikipedia/commons/9/99/Brooks_Chase_Ranger_of_Jolly_Dogs_Jack_Russell.jpg","World"))
    push!(img_url_list,("https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Lengthy_body_Kanni.jpg/972px-Lengthy_body_Kanni.jpg","Hello Wordl"))
end;

# ╔═╡ d2e5fc28-908f-4fbb-926e-3be4d04301f0
md"""
Viewing angle $(@bind img_id Slider(1:length(img_url_list);default=1))
"""

# ╔═╡ cd389a3b-4299-4203-a3f2-1141ae1194d7
@htl("<h2>$(img_url_list[img_id][2])</h2>")

# ╔═╡ ae432659-98f8-40eb-8ae4-39298d297aff
#res_list = map(s->Resource(s[1],  :width=>img_width, :height=>img_height),img_url_list);

# ╔═╡ f4c4de78-9ead-442f-aa23-83cceec13544
begin
        img_width = "auto" 
        img_height = "600"
end;

# ╔═╡ 74597c2b-f4d4-41b3-b826-d8a2d7bb6e45
md"""
$(Resource(img_url_list[img_id][1], :height=>img_height, :width=>img_width))
"""

# ╔═╡ 9d5a69ca-df63-4402-a48e-bc76571112f5
html"""
<style>
main {
	max-width: 97% ! important;
	margin-left: 20px !important;
 	margin-right: 20px !important;
    align-self: flex-end;
}
header {
	display: none;
}
footer {
	display: none;
}
</style>
"""

# ╔═╡ c12f18bd-8806-482a-83b5-17e7ef51ee15
#html"<script>present()</script>"

# ╔═╡ Cell order:
# ╟─d2e5fc28-908f-4fbb-926e-3be4d04301f0
# ╟─74597c2b-f4d4-41b3-b826-d8a2d7bb6e45
# ╟─cd389a3b-4299-4203-a3f2-1141ae1194d7
# ╟─395ad583-ff7a-4357-ab4d-cdc4eaa2a1a1
# ╟─1a712530-882e-416f-9814-97d285e5ec8e
# ╟─ae432659-98f8-40eb-8ae4-39298d297aff
# ╟─f4c4de78-9ead-442f-aa23-83cceec13544
# ╟─9d5a69ca-df63-4402-a48e-bc76571112f5
# ╟─aa52e565-c603-4adc-ae2a-a21da99f8865
# ╟─c12f18bd-8806-482a-83b5-17e7ef51ee15
