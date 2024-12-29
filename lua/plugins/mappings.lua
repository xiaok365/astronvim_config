return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
          ["<Leader>bD"] = {
            function()
              require("astroui.status").heirline.buffer_picker(function(bufnr)
                require("astrocore.buffer").close(bufnr)
              end)
            end,
            desc = "Pick to close",
          },
          -- tables with just a `desc` key will be registered with which-key if it's installed
          -- this is useful for naming menus
          ["<Leader>b"] = { desc = "Buffers" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
          ["<C-d>"] = { "<C-d>zz", desc = "move down" },
          ["<C-u>"] = { "<C-u>zz", desc = "move up" },
          ["<C-q>"] = { "<nop>" },
          ["Q"] = { "<nop>" },
          ["n"] = { "nzzzv" },
          ["N"] = { "Nzzzv" },
          ["d"] = { [["_d]] },
          ["<leader>sx"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]] },
          -- ["<Enter>"] = { [[o<ESC>]] },
          ["<S-Enter>"] = { [[O<ESC>]] },
          ["<leader>Y"] = { [[:%y+<CR><CR>]] },
          ["<leader>D"] = { [[gg"_dG]] },
          ["<leader>V"] = { [[ggVG]] },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
        },
        v = {
          ["J"] = { ":m '>+1<CR>gv=gv" },
          ["K"] = { ":m '<-2<CR>gv=gv" },
          ["d"] = { [["_d]] },
          ["p"] = { [[P]] },
        },
        i = {
          ["<C-c>"] = { "<ESC>", desc = "ESC" },
        },
      },
    },
  }
}
