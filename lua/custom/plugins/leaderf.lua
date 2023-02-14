vim.api.nvim_exec(
  [[
  let g:Lf_RootMarkers =  ['.root', '.svn', '.git', '.hg', '.project']

  " 默认设置以根目录搜索
  let g:Lf_WorkingDirectoryMode = 'Ac'
  " 搜索时显示隐藏文件
  let g:Lf_ShowHidden = 1

  " 隐藏可以执行文件和git仓
  let g:Lf_WildIgnore = {
  \ 'dir': ['.svn','.git','.hg'],
  \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
  \}

  let g:Lf_CacheDirectory = expand('~/.cache')
  let g:Lf_UseVersionControlTool = 0
  let g:Lf_IgnoreCurrentBufferName = 1
  " 不要使用相对路径，看了也看不明白
  let g:Lf_ShowRelativePath = 0
  " 禁止用缓存保证每次都能看到最新的内容
  let g:Lf_UseCache = 0
  let g:Lf_UseMemoryCache = 0
  " popup mode
  let g:Lf_WindowPosition = 'popup'
  let g:Lf_PreviewInPopup = 1
  let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
  let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 , 'floaterm': 1}
  let g:Lf_PopupColorscheme="onedark"
  let g:Lf_StlColorscheme="onedark"
  let g:Lf_GtagsAutoGenerate = 0
]],
  true
)
