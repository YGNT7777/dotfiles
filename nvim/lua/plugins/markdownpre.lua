-- install with yarn or npm
return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  build = "cd app && yarn install",
  init = function()
    vim.g.mkdp_filetypes = { "markdown" }

    -- Use a Vimscript function that jobstarts the right Brave command (non-blocking).
    vim.g.mkdp_browserfunc = 'OpenMarkdownPreview'
    vim.cmd([[
      function! OpenMarkdownPreview(url)
        " echo the URL so you can copy/paste if needed
        echom "MarkdownPreview URL: " . a:url

        " macOS
        if has('macunix')
          call jobstart(['open', '-a', 'Brave Browser', a:url])
          return
        endif

        " Linux: prefer brave-browser, fall back to brave, then xdg-open
        if executable('brave-browser')
          call jobstart(['brave-browser', '--new-window', a:url])
          return
        endif
        if executable('brave')
          call jobstart(['brave', '--new-window', a:url])
          return
        endif
        if executable('xdg-open')
          call jobstart(['xdg-open', a:url])
          return
        endif

        " Final fallback (may block briefly)
        call jobstart(['sh', '-c', 'xdg-open ' . a:url . ' >/dev/null 2>&1 &'])
      endfunction
    ]])
  end,
  ft = { "markdown" },
}

