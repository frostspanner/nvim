local spec = {
  { "ellisonleao/gruvbox.nvim", opts = { contrast = "hard" } },
  { "catppuccin/nvim", name = "catppuccin" },
  { "folke/tokyonight.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/everforest" },
  { "sainnhe/sonokai" },
  { "gbprod/nord.nvim" },
  { "edeneast/nightfox.nvim" },
  { "calind/selenized.nvim" },
  { "kepano/flexoki-neovim" },
  { "navarasu/onedark.nvim" },
  { "mofiqul/dracula.nvim" },
  { "savq/melange-nvim" },
  { "bluz71/vim-nightfly-colors" },
  { "bluz71/vim-moonfly-colors" },
  { "NTBBloodbath/sweetie.nvim" },
  { "mofiqul/vscode.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "maxmx03/solarized.nvim" },
  -- kanagawa-paper
  { "dgox16/oldworld.nvim" },
  { "diegoulloao/neofusion.nvim" },
  -- midnight
  -- nightcity
  { "maxmx03/FluoroMachine.nvim" },
  { "lmburns/kimbox" },
  { "embark-theme/vim", name = "embark" },
  { "pauchiner/pastelnight.nvim" },
  { "spaceduck-theme/nvim", name = "spaceduck" },
  { "phha/zenburn.nvim" },
  -- mini.base16
  -- vim-deus
  { "yorik1984/newpaper.nvim" },
  { "datsfilipe/vesper.nvim" },
  { "miikanissi/modus-themes.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "projekt0n/caret.nvim" },
  { "marko-cerovac/material.nvim" },
  { "slugbyte/lackluster.nvim" },
  { "fynnfluegge/monet.nvim" },
  { "ribru17/bamboo.nvim" },
  { "darkvoid-theme/darkvoid.nvim" },
  { "olivercederborg/poimandres.nvim" },
  { "rmehri01/onenord.nvim" },
  -- "olimorris/onedarkpro.nvim", -- conflict woith onedark
  { "bettervim/yugen.nvim" },
  { "blazkowolf/gruber-darker.nvim" },
  { "ramojus/mellifluous.nvim" },
  { "Yazeed1s/oh-lucy.nvim" },
  { "oahlen/iceberg.nvim" },
  { "samharju/serene.nvim" },
  { "comfysage/evergarden" },
  { "ptdewey/DarkEarth-nvim" },
  { "Everblush/nvim", name = "Everblush" },
  { "scottmckendry/cyberdream.nvim" },
  { "e-q/okcolors.nvim" },
  { "amedoeyes/eyes.nvim" },
  { "Shatur/neovim-ayu" },
  { "wurli/cobalt.nvim" },
  { "kyazdani42/blue-moon" },
  { "nyngwang/nvimgelion" },
  { "yorumicolors/yorumi.nvim" },
  -- lavish
  -- flow
  { "sam4llis/nvim-tundra" },
  -- monoglow
  -- vague
  { "cpwrs/americano.nvim" },
  { "ilof2/posterpole.nvim" },
  -- moonbow
  -- darcula-dark
  -- 68 cutoff --
  -- eidolon
  -- miasma ?
  -- monochrome
  -- fleet
  -- templeos ^
  -- fakedonalds ^
  { "sontungexpt/witch" },
  { "oxfist/night-owl.nvim" },
  { "atmosuwiryo/vim-winteriscoming" },
  { "akinsho/horizon.nvim" },
  { "WTFox/jellybeans.nvim", config = true },
  { "shmerl/neogotham" },
  -- yellowbeans
  -- monokai
  { "rockerBOO/boo-colorscheme-nvim" },
  { "zootedb0t/citruszest.nvim" },
  -- adwaita
  -- nordic
  { "craftzdog/solarized-osaka.nvim" },
  -- tokyodark
  { "samharju/synthweave.nvim" },
  -- kyotonight
  -- monokai-pro
  -- no-clown-fiesta
  -- aurora
  { "NTBBloodbath/doom-one.nvim" },
  { "eldritch-theme/eldritch.nvim" },
  { "hachy/eva01.vim" },
  { "verf/deepwhite.nvim" },
  { "p00f/alabaster.nvim" },
  { "Abstract-IDE/Abstract-cs" },
  -- nova
  -- ashen
  -- obscure
  -- nano
  -- morta
  { "water-sucks/darkrose.nvim" },
  -- lvim
  { "mikesmithgh/gruvsquirrel.nvim" },
  -- lush themes
  -- bluloco
  -- zenbones
}

for _, v in pairs(spec) do
  v["event"] = "VeryLazy"
end

return spec
