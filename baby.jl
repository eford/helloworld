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

# ╔═╡ ae0936ee-c767-11ea-0cbc-3f58779113da
begin
	let
		env = mktempdir()
		import Pkg
		Pkg.activate(env)
		Pkg.Registry.update()
		Pkg.add(Pkg.PackageSpec(;name="PlutoUI", version="0.7"))
	end
	using PlutoUI
end;

# ╔═╡ 3eff9592-cc63-11ea-2b61-4170d1a7656a
md"# Setup code"

# ╔═╡ cb47403b-13f8-4fe6-8ad3-b125ebdfb88e
begin
	img_url1 = "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9b/Chin_posing.jpg/998px-Chin_posing.jpg"
	img_url2 = "https://upload.wikimedia.org/wikipedia/commons/9/99/Brooks_Chase_Ranger_of_Jolly_Dogs_Jack_Russell.jpg"
	img_url3 = "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Lengthy_body_Kanni.jpg/972px-Lengthy_body_Kanni.jpg"
end;

# ╔═╡ 223cc898-c35c-4216-a1af-ce43bad7ed51
begin
	img_width = 800
	img_height = 600
end;

# ╔═╡ 1004db48-8715-4aca-ba21-a6e7484a5753
res_list = [Resource(img_url1, :width=>img_width,:height=>img_height), Resource(img_url2,:width=>img_width,:height=>img_height), Resource(img_url3,:width=>img_width,:height=>img_height)];

# ╔═╡ 34ebf81e-c760-11ea-05bb-376173e7ed10
@bind x Slider(1:length(res_list);default=1)

# ╔═╡ cdabd9a5-bde2-4552-a4de-162f4a412ca4
md"""
$(res_list[x])
"""

# ╔═╡ 09623ed1-966d-46fc-8031-203eba226381
html"""
<style>
body.hide_all_inputs pluto-input {
	display: none;
}
body.hide_all_inputs pluto-shoulder {
	display: none;
}
body.hide_all_inputs pluto-trafficlight {
	display: none;
}
body.hide_all_inputs pluto-runarea {
	display: none;
}
body.hide_all_inputs .add_cell {
	display: none;
}
body.hide_all_inputs pluto-cell {
	min-height: 0;
	margin-top: 10px;
}
</style>
"""

# ╔═╡ Cell order:
# ╟─cdabd9a5-bde2-4552-a4de-162f4a412ca4
# ╟─34ebf81e-c760-11ea-05bb-376173e7ed10
# ╟─3eff9592-cc63-11ea-2b61-4170d1a7656a
# ╟─ae0936ee-c767-11ea-0cbc-3f58779113da
# ╠═cb47403b-13f8-4fe6-8ad3-b125ebdfb88e
# ╠═223cc898-c35c-4216-a1af-ce43bad7ed51
# ╠═1004db48-8715-4aca-ba21-a6e7484a5753
# ╠═09623ed1-966d-46fc-8031-203eba226381
