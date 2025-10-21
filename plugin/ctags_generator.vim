" Description: Defines commands and logic to automatically generate and load

" Function to execute the ctags command in the current working directory.
function! s:GenerateTags() abort
    let l:tag_command = 'ctags -R *.cu *.hpp *.cpp *.h *.c'

    " Check if the ctags command is available.
    if !executable('ctags')
        echohl ErrorMsg
        echo "Error: 'ctags' executable not found. Please install ctags."
        echohl None
        return
    endif

    " Execute the command silently to avoid terminal flashing, and capture output
    " for error checking. The 'a' stands for 'all output'.
    let l:output = system(l:tag_command)

    if v:shell_error == 0
        echom "Ctags file generated successfully in: " . expand(getcwd() . '/tags')
    else
        echohl WarningMsg
        echo "Ctags command failed. Output: " . l:output
        echohl None
        return
    endif

    " After generating, automatically load the new tags file.
    call s:SetLocalTags('./')
endfunction

" Define the user command for manual execution
command! GenerateTags call s:GenerateTags()

" Function to check for and set the project-local tags file
function! s:SetLocalTags(tags_dir_path) abort
    let l:tags_file_path = ''
    if a:tags_dir_path ==# ''
        let l:tags_file_path = expand(getcwd(), '/tags')
    else
        let l:tags_file_path = fnamemodify(a:tags_dir_path, ':p') . '/tags'
    endif

    " Check if the tags file exists and is readable
    if filereadable(l:tags_file_path)
        " Set the tags option to include the local file and any existing settings.
        " This ensures the project tags are always prioritized.
        let &tags = l:tags_file_path . ',' . &tags
        echom 'Project tags active: ' . l:tags_file_path
    else
        echo "Error: 'tags' not found."
    endif
endfunction

" Define the user command for manual execution
command! -nargs=? SetLocalTags call s:SetLocalTags(<q-args>)
