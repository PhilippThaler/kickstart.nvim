-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec

vim.filetype.add {
  extension = {
    j2 = 'jinja',
  },
  pattern = {
    -- playbooks at repo root (nvim-ansible only catches playbook*/ and dirs)
    ['.*/(bootstrap|site|main|deploy)%.ya?ml'] = 'yaml.ansible',
  },
}
return {
  'mfussenegger/nvim-ansible',
}
