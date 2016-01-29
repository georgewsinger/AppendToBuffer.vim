function! AppendToBuffer(l1, l2, buffer)
  set hidden
  let currentBuffer = @%
  let currentRegister = @z
  execute a:l1 . "," . a:l2 . 'd z'
  normal O<--SENT TO =a:buffer-->
  execute "buffer " . a:buffer
  normal G"zpO
  normal <C-O>
  let @z = currentRegister
  execute "buffer " . currentBuffer
  set nohidden
endfunction

command! -nargs=1 -complete=buffer -range AppendToBuffer call AppendToBuffer(<line1>, <line2>, <f-args>)
