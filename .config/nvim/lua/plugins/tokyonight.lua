return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("tokyonight").setup({
      style = "night",

      on_highlights = function(hl, c)
        hl["@attribute"]                            = { fg = c.blue }
        hl["@boolean"]                              = { fg = c.orange }
        hl["@character"]                            = { fg = c.orange }
        hl["@character.special"]                    = { fg = c.red }
        hl["@constructor"]                          = { fg = "" }
        hl["@constant"]                             = { fg = c.red }
        hl["@constant.builtin"]                     = { fg = c.orange }
        hl["@comment"]                              = { fg = c.comment, italic = false }
        hl["@function"]                             = { fg = c.blue }
        hl["@function.call"]                        = { fg = c.blue }
        hl["@function.method"]                      = { fg = c.blue }
        hl["@function.builtin"]                     = { fg = c.blue }
        hl["@keyword"]                              = { fg = c.magenta }
        hl["@keyword.conditional"]                  = { fg = c.magenta }
        hl["@keyword.directive"]                    = { fg = c.comment }
        hl["@keyword.function"]                     = { fg = c.magenta }
        hl["@keyword.import"]                       = { fg = c.magenta }
        hl["@keyword.return"]                       = { fg = c.magenta }
        hl["@keyword.operator"]                     = { fg = c.magenta }
        hl["@module"]                               = { fg = "#dec76e" }
        hl["@number"]                               = { fg = c.orange }
        hl["@operator"]                             = { fg = c.fg }
        hl["@punctuation.delimiter"]                = { fg = c.fg }
        hl["@punctuation.bracket"]                  = { fg = "#d670d6" }
        hl["@property"]                             = { fg = c.red }
        hl["@type"]                                 = { fg = "#dec76e" }
        hl["@type.builtin"]                         = { fg = "#dec76e" }
        hl["@type.definition"]                      = { fg = "" }
        hl["@variable"]                             = { fg = c.red }
        hl["@variable.builtin"]                     = { fg = "#dec76e" }
        hl["@variable.member"]                      = { fg = c.red }
        hl["@variable.parameter"]                   = { fg = c.red }
        hl["@string"]                               = { fg = c.green }
        hl["@string.documentation"]                 = { fg = c.green }
        hl["@string.escape"]                        = { fg = c.green }
        hl["@speel"]                                = { fg = c.green }
        hl["@tag"]                                  = { fg = c.red }
        hl["@tag.buildin"]                          = { fg = c.red }
        hl["@tag.delimiter"]                        = { fg = c.fg }
        hl["@tag.attribute"]                        = { fg = c.blue }

        hl["@type.builtin.c"]                       = { fg = c.magenta }
        hl["@type.builtin.cpp"]                     = { fg = c.magenta }
        hl["@type.builtin.c_sharp"]                 = { fg = c.magenta }

        hl["@property.css"]                         = { fg = c.fg }
        hl["@text.css"]                             = { fg = c.orange }
        hl["@hexcolor.css"]                         = { fg = c.orange }
        hl["@id.css"]                               = { fg = c.blue }
        hl["@string.css"]                           = { fg = c.green }
        hl["@unit.css"]                             = { fg = c.red }
        hl["@class.css"]                            = { fg = c.blue }

        hl["@property.scss"]                        = { fg = c.fg }
        hl["@text.scss"]                            = { fg = c.orange }
        hl["@hexcolor.scss"]                        = { fg = c.orange }
        hl["@id.scss"]                              = { fg = c.blue }
        hl["@string.scss"]                          = { fg = c.green }
        hl["@unit.scss"]                            = { fg = c.red }
        hl["@class.scss"]                           = { fg = c.blue }

        hl["@string.escape"]                        = { fg = c.blue }

        hl["@markup.heading.1"]                     = { fg = c.fg, bold = false }
        hl["@markup.heading.2"]                     = { fg = c.fg, bold = false }
        hl["@markup.heading.3"]                     = { fg = c.fg, bold = false }
        hl["@markup.heading.4"]                     = { fg = c.fg, bold = false }
        hl["@markup.heading.5"]                     = { fg = c.fg, bold = false }
        hl["@markup.heading.6"]                     = { fg = c.fg, bold = false }

        hl["@markup.raw"]                           = { fg = c.fg }
        hl["@markup.strong"]                        = { fg = c.fg, bold = false }
        hl["@markup.italic"]                        = { fg = c.fg, italic = false }
        hl["@markup.strikethrough"]                 = { fg = c.fg, strikethrough = false }

        hl["@markup.heading.markdown"]              = { fg = c.red }
        hl["@markup.raw.block.markdown"]            = { fg = c.fg }
        hl["@label.markdown"]                       = { fg = c.fg }
        hl["@markup.list.markdown"]                 = { fg = c.orange, bold = false }
        hl["@markup.list.checked.markdown"]         = { fg = c.blue }
        hl["@markup.link"]                          = { fg = c.fg }
        hl["@markup.link.label"]                    = { fg = c.blue }
        hl["@markup.link.url"]                      = { fg = c.purple, underline = true }

        hl["@markup.raw.markdown_inline"]           = { fg = c.green }
        hl["@markup.strong.markdown_inline"]        = { fg = c.orange, bold = true }
        hl["@markup.italic.markdown_inline"]        = { fg = c.magenta, italic = true }
        hl["@markup.strikethrough.markdown_inline"] = { fg = c.magenta, strikethrough = true }

        hl["RainbowDelimiterYellow"]                = { fg = "#fdb347" }
        hl["RainbowDelimiterViolet"]                = { fg = "#d670d6" }
        hl["RainbowDelimiterBlue"]                  = { fg = "#3383ff" }
      end,
    })

    vim.cmd.colorscheme("tokyonight-night")
  end,
}
