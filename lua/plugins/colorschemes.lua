local spec = {
  { "ellisonleao/gruvbox.nvim" },
  { "rockyzhang24/arctic.nvim", branch = "v2", dependencies = { "rktjmp/lush.nvim" } },
  { "catppuccin/nvim", name = "catppuccin" },
  { "folke/tokyonight.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "wurli/cobalt.nvim" },
  { "neanias/everforest-nvim" },
  { "f4z3r/gruvbox-material.nvim" },
  { "rmehri01/onenord.nvim" },
  { "gbprod/nord.nvim" },
  { "mikesmithgh/gruvsquirrel.nvim" },
  { "edeneast/nightfox.nvim" },
  { "navarasu/onedark.nvim" },
  { "mofiqul/dracula.nvim" },
  { "echasnovski/mini.base16" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "zenbones-theme/zenbones.nvim" },
}
local extra = {
  { "phha/zenburn.nvim" },
  { "FrenzyExists/aquarium-vim" },
  { "alexxGmZ/e-ink.nvim" },
  { "sainnhe/sonokai" },
  { "calind/selenized.nvim" },
  { "kepano/flexoki-neovim" },
  { "navarasu/onedark.nvim" },
  { "FrenzyExists/aquarium-vim" },
  { "mofiqul/dracula.nvim" },
  { "navarasu/onedark.nvim" },
  { "FrenzyExists/aquarium-vim" },
  { "adisen99/codeschool.nvim" },
  { "adisen99/apprentice.nvim" },
  { "mofiqul/dracula.nvim" },
  { "savq/melange-nvim" },
  { "bluz71/vim-nightfly-colors", name = "nightfly" },
  { "bluz71/vim-moonfly-colors", name = "moonfly" },
  { "NTBBloodbath/sweetie.nvim" },
  { "mofiqul/vscode.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "maxmx03/solarized.nvim" },
  { "thesimonho/kanagawa-paper.nvim" },
  { "dgox16/oldworld.nvim" },
  { "diegoulloao/neofusion.nvim" },
  { "dasupradyumna/midnight.nvim" },
  { "cryptomilk/nightcity.nvim" },
  { "maxmx03/FluoroMachine.nvim" },
  { "lmburns/kimbox" },
  { "embark-theme/vim", name = "embark" },
  { "pauchiner/pastelnight.nvim" },
  { "spaceduck-theme/nvim", name = "spaceduck" },
  { "theniceboy/nvim-deus" },
  { "yorik1984/newpaper.nvim" },
  { "datsfilipe/vesper.nvim" },
  { "miikanissi/modus-themes.nvim", opts = { variant = "tinted" } },
  { "projekt0n/github-nvim-theme" },
  { "projekt0n/caret.nvim" },
  { "marko-cerovac/material.nvim" },
  { "slugbyte/lackluster.nvim" },
  { "rjshkhr/shadow.nvim" },
  { "fynnfluegge/monet.nvim" },
  { "ribru17/bamboo.nvim" },
  { "darkvoid-theme/darkvoid.nvim" },
  { "olivercederborg/poimandres.nvim" },
  -- "olimorris/onedarkpro.nvim", -- conflict with onedark
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
  { "kyazdani42/blue-moon" },
  { "nyngwang/nvimgelion" },
  { "yorumicolors/yorumi.nvim" },
  { "0xstepit/flow.nvim" },
  { "sam4llis/nvim-tundra" },
  { "wnkz/monoglow.nvim" },
  { "vague2k/vague.nvim" },
  { "gmr458/cold.nvim" },
  { "gmr458/vscode_modern_theme.nvim" },
  { "Skardyy/makurai-nvim" },
  { "idr4n/github-monochrome.nvim" },
  { "cpwrs/americano.nvim" },
  { "ilof2/posterpole.nvim" },
  { "arturgoms/moonbow.nvim" },
  { "xiantang/darcula-dark.nvim" },
  { "Vallen217/eidolon.nvim" },
  { "xero/miasma.nvim" },
  { "0xhoussam/fleet.nvim" },
  { "svin24/breeze.nvim" },
  { "raphael-proust/vacme" },
  { "LunarVim/templeos.nvim" },
  { "dundargoc/fakedonalds.nvim" },
  { "sontungexpt/witch" },
  { "oxfist/night-owl.nvim" },
  { "atmosuwiryo/vim-winteriscoming" },
  { "akinsho/horizon.nvim" },
  { "WTFox/jellybeans.nvim", config = true },
  { "shmerl/neogotham" },
  { "gremble0/yellowbeans.nvim" },
  { "polirritmico/monokai-nightasty.nvim" },
  { "ofirgall/ofirkai.nvim" },
  { "rockerBOO/boo-colorscheme-nvim" },
  { "zootedb0t/citruszest.nvim" },
  { "mofiqul/adwaita.nvim" },
  { "AlexvZyl/nordic.nvim" },
  { "craftzdog/solarized-osaka.nvim" },
  { "tiagovla/tokyodark.nvim" },
  { "samharju/synthweave.nvim" },
  { "loctvl842/monokai-pro.nvim", config = true },
  { "aktersnurra/no-clown-fiesta.nvim" },
  { "ray-x/aurora" },
  { "sainnhe/edge" },
  { "NTBBloodbath/doom-one.nvim" },
  { "eldritch-theme/eldritch.nvim" },
  { "hachy/eva01.vim" },
  { "verf/deepwhite.nvim" },
  { "p00f/alabaster.nvim" },
  { "Abstract-IDE/Abstract-cs" },
  { "zanglg/nova.nvim" },
  { "ficcdaf/ashen.nvim" },
  -- { "Sh1nJiTEITA/ashenbox.nvim" }, --name collision with ashen
  { "killitar/obscure.nvim" },
  { "ronisbr/nano-theme.nvim" },
  { "philosofonusus/morta.nvim" },
  { "water-sucks/darkrose.nvim" },
  { "jim-at-jibba/ariake.nvim" },
  { "https://codeberg.org/jthvai/lavender.nvim" },
  { "kevinm6/kurayami.nvim" },
  { "m15a/nvim-srcerite", dependencies = "Iron-E/nvim-highlite" },
  { "cpea2506/one_monokai.nvim" },
  { "alexmozaidze/palenight.nvim" },
  { "qaptoR-nvim/chocolatier.nvim" },
  { "kvrohit/rasmus.nvim" },
  { "https://gitlab.com/bartekjaszczak/finale-nvim" },
  { "https://gitlab.com/bartekjaszczak/luma-nvim" },
  { "https://gitlab.com/sxwpb/halfspace.nvim" },
  { "loganswartz/sunburn.nvim", dependencies = { "loganswartz/polychrome.nvim" } },
  { "https://gitlab.com/bartekjaszczak/distinct-nvim" },
  -- lush themes
  -- bluloco
  { "uloco/bluloco.nvim", dependencies = { "rktjmp/lush.nvim" } },
}

for _, v in pairs(spec) do
  v["event"] = "VeryLazy"
end

return spec
