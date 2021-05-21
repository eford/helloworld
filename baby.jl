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
    end
    using PlutoUI
end

# ╔═╡ 395ad583-ff7a-4357-ab4d-cdc4eaa2a1a1
md"Code in cells below"

# ╔═╡ 1a712530-882e-416f-9814-97d285e5ec8e
begin
	img_url_list = String[];
	push!(img_url_list,"https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Chin_posing.jpg/998px-Chin_posing.jpg")
    push!(img_url_list,"https://upload.wikimedia.org/wikipedia/commons/9/99/Brooks_Chase_Ranger_of_Jolly_Dogs_Jack_Russell.jpg")
    push!(img_url_list,"https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Lengthy_body_Kanni.jpg/972px-Lengthy_body_Kanni.jpg")
end;

# ╔═╡ f4c4de78-9ead-442f-aa23-83cceec13544
begin
        img_width = "auto" 
        img_height = "600"
end;

# ╔═╡ ae432659-98f8-40eb-8ae4-39298d297aff
res_list = map(s->Resource(s,  :width=>img_width, :height=>img_height),img_url_list);

# ╔═╡ d2e5fc28-908f-4fbb-926e-3be4d04301f0
md"""
Viewing angle $(@bind x Slider(1:length(res_list);default=1))
"""

# ╔═╡ db30fdba-7ff3-4f3d-8c76-ee7a41f60988
md"""
$(res_list[x])
"""

# ╔═╡ 9d5a69ca-df63-4402-a48e-bc76571112f5
# main {max-width: 100vw;}
html"""
<style>
header {
display: none;
}
footer {
display: none;
}
</style>
"""

# ╔═╡ Cell order:
# ╟─d2e5fc28-908f-4fbb-926e-3be4d04301f0
# ╟─db30fdba-7ff3-4f3d-8c76-ee7a41f60988
# ╟─395ad583-ff7a-4357-ab4d-cdc4eaa2a1a1
# ╟─1a712530-882e-416f-9814-97d285e5ec8e
# ╟─ae432659-98f8-40eb-8ae4-39298d297aff
# ╟─f4c4de78-9ead-442f-aa23-83cceec13544
# ╟─9d5a69ca-df63-4402-a48e-bc76571112f5
# ╟─aa52e565-c603-4adc-ae2a-a21da99f8865
