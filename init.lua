local vscode = require('vscode')

-- leader map
vim.g.mapleader = ','

-- sync with editor clipboard
vim.opt.clipboard = 'unnamedplus'

-- ingnore case in search
vim.opt.ignorecase = true
-- ingore "ingnorecase" when any letter is uppercase
vim.opt.smartcase = true

-- open init.lua
vim.cmd('nmap <leader>c :e ~/.config/nvim/init.lua<cr>')

-- past without override clipbord
vim.keymap.set('v', 'p', 'P')

-- map redo to 'U'
vim.keymap.set('n', 'U', '<C-r>')

-- remove search highlight
vim.keymap.set('n', '<C-[>', ':nohl<cr>')

if vim.g.vscode then
  local opts = { noremap = true, silent = true }

  local mappings = {
    -- Code Navigation
    { 'n', '<leader>gd', 'editor.action.revealDefinition' },
    { 'n', '<leader>gy', 'editor.action.goToTypeDefinition' },
    { 'n', '<leader>gi', 'editor.action.goToImplementation' },
    { 'n', '<leader>gr', 'editor.action.goToReferences' },
    { 'n', '<leader>gs', 'workbench.action.gotoSymbol' },
    { 'n', '<leader>gl', 'workbench.action.gotoLine' },
    { 'n', '<leader>nf', 'workbench.action.navigateForward' },
    { 'n', '<leader>nb', 'workbench.action.navigateBack' },
    { 'n', '<leader>je', 'workbench.action.navigateToLastEditLocation' },

    -- Quick Search & Peek Actions
    { 'n', '<leader>ss', 'workbench.action.showAllSymbols' },
    { 'n', '<leader>sa', 'workbench.action.showCommands' },
    { 'n', '<leader>sf', 'workbench.action.quickOpen' },
    { 'n', '<leader>vd', 'editor.action.peekDefinition' },
    { 'n', '<leader>vi', 'editor.action.peekImplementation' },
    { 'n', '<leader>vt', 'editor.action.peekTypeDefinition' },
    { 'n', '<leader>vh', 'editor.action.showHover' },
    { 'n', '<leader>fr', 'references-view.findReferences' },
    { 'n', '<leader>sr', 'editor.action.referenceSearch.trigger' },
    { 'n', '<leader>sc', 'references-view.showCallHierarchy' },

    -- Find, Replace & Refactoring
    { 'n', '<leader>ff', 'actions.find' },
    { 'n', '<leader>fr', 'editor.action.startFindReplaceAction' },
    { 'n', '<leader>fg', 'workbench.action.findInFiles' },
    { 'n', '<leader>rg', 'workbench.action.replaceInFiles' },
    { 'n', '<leader>re', 'editor.action.rename' },
    { {'n', 'v'}, '<leader>rf', 'editor.action.refactor' },
    { 'n', '<leader>qf', 'editor.action.quickFix' },
    { 'n', '<leader>sg', 'editor.action.triggerSuggest' },
    { 'i', '<C-j>', 'editor.action.triggerSuggest' },

    -- Line Editing & Code Maintenance
    { 'n', '<leader>lu', 'editor.action.copyLinesUpAction' },
    { 'n', '<leader>ld', 'editor.action.copyLinesDownAction' },
    { 'n', '<leader>mu', 'editor.action.moveLinesUpAction' },
    { 'n', '<leader>md', 'editor.action.moveLinesDownAction' },
    { 'n', '<leader>fm', 'editor.action.formatDocument' },
    { 'n', '<leader>oi', 'editor.action.organizeImports' },
    { 'n', '<leader>en', 'editor.action.marker.next' },
    { 'n', '<leader>ep', 'editor.action.marker.prev' },

    -- File & Workspace Management
    { 'n', '<leader>cp', 'copyFilePath' },
    { 'n', '<leader>cr', 'copyRelativeFilePath' },
    { 'n', '<leader>rl', 'workbench.action.openRecent' },
    { 'n', '<leader>nf', 'workbench.action.files.newUntitledFile' },
    { 'n', '<leader>cf', 'workbench.action.closeActiveEditor' },
    { 'n', '<leader>fa', 'workbench.action.closeAllEditors' },
    { 'n', '<leader>of', 'workbench.action.files.openFile' },
    { 'n', '<leader>rw', 'workbench.action.reloadWindow' },
    { 'n', '<leader>os', 'workbench.action.openSettingsJson' },

    -- Window Management
    { 'n', '<leader>wv', 'workbench.action.splitEditor' },
    { 'n', '<leader>wh', 'workbench.action.splitEditorDown' },
    { 'n', '<leader>ww', 'workbench.action.joinTwoGroups' },
    { 'n', '<leader>wa', 'workbench.action.evenEditorWidths' },
  }

  for _, mapping in ipairs(mappings) do
    local mode, key, command = mapping[1], mapping[2], mapping[3]

    vim.keymap.set(mode, key, function() vscode.action(command) end, opts)
  end
end
