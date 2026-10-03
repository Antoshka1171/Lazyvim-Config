return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            win = {
              input = {
                keys = {
                  ["j"] = { "list_up", mode = { "n" } },
                  ["k"] = { "list_down", mode = { "n" } },
                },
              },
              list = {
                keys = {
                  ["j"] = "list_up",
                  ["k"] = "list_down",
                },
              },
            },
          },
        },
      },
    },
  },
}
