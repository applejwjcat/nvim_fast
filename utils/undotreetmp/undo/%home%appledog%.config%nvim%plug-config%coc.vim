Vim�UnDo� ���/V"��C�(9�g��2d?�R�c�cR��   �   Cset statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}   �          <       <   <   <    _H�    _�                     *        ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   )   +   �       �   *   +   �    5�_�                   )   $    ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   (   *   �      $vmap <c-t> <Plug>(coc-translator-pv)�   )   *   �    5�_�                    )   $    ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   (   *   �      Dvmap <c-t> <Plug>(coc-translator-pv)get correct comment highlighting5�_�                    )   %    ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   )   +   �    �   (   +   �      Fvmap <c-t> <Plug>(coc-translator-pv)""get correct comment highlighting5�_�                    )   %    ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   (   *   �      $vmap <c-t> <Plug>(coc-translator-pv)   !"get correct comment highlighting�   (   *   �      $vmap <c-t> <Plug>(coc-translator-pv)    �   (   *   �      %vmap <c-t> <Plug>(coc-translator-pv)"5�_�                    )   $    ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   (   +   �      Dvmap <c-t> <Plug>(coc-translator-pv)get correct comment highlighting5�_�      	              )       ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   )   +   �    5�_�      
           	   ,        ����                                                                                                                                                                                                                                                                                                                                                             _@��    �   ,   .   �    5�_�   	              
   &        ����                                                                                                                                                                                                                                                                                                                                                             _@�3     �   &   (   �    5�_�   
                 '        ����                                                                                                                                                                                                                                                                                                                                                             _@�4     �   &   )   �       5�_�                    (        ����                                                                                                                                                                                                                                                                                                                                                             _@�5     �   '   *   �       5�_�                    (        ����                                                                                                                                                                                                                                                                                                                                                             _@�7     �   '   )   �       5�_�                    (       ����                                                                                                                                                                                                                                                                                                                                                             _@�S     �   '   *   �      "auto format cpp file when type5�_�                    )        ����                                                                                                                                                                                                                                                                                                                                                             _@�V     �   (   *   �       5�_�                    )       ����                                                                                                                                                                                                                                                                                                                                                             _@�t     �   (   *   �      autocmd FileType c,cpp �   )   *   �    5�_�                    )       ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   (   *   �      oautocmd FileType c,cpp clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %5�_�                    )   u    ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   (   *   �      uautocmd FileType c,cpp exec "clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %5�_�                    )   4    ����                                                                                                                                                                                                                                                                                                                                                             _@��    �   (   *   �      vautocmd FileType c,cpp exec "clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %"5�_�                    )       ����                                                                                                                                                                                                                                                                                                                                                             _@�     �   (   *   �      vautocmd FileType c,cpp exec "clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %"5�_�                    )   #    ����                                                                                                                                                                                                                                                                                                                                                             _@�     �   (   *   �      }autocmd FileType c,cpp inoremap ;  "clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %"5�_�                    )   "    ����                                                                                                                                                                                                                                                                                                                                                             _@�     �   (   *   �      ~autocmd FileType c,cpp inoremap ;  ;"clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %"5�_�                    )   #    ����                                                                                                                                                                                                                                                                                                                                                             _@�"     �   (   *   �      }autocmd FileType c,cpp inoremap ; ;"clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %"5�_�                    )   (    ����                                                                                                                                                                                                                                                                                                                                                             _@�(     �   (   *   �      �autocmd FileType c,cpp inoremap ; ;<Esc>"clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %"5�_�                    )   *    ����                                                                                                                                                                                                                                                                                                                                                             _@�)     �   (   *   �      �autocmd FileType c,cpp inoremap ; ;<Esc>:"clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %"5�_�                    )   �    ����                                                                                                                                                                                                                                                                                                                                                             _@�/     �   (   *   �      �autocmd FileType c,cpp inoremap ; ;<Esc>:clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %   %" use <C-t> to trigger the translator�   (   *   �      �autocmd FileType c,cpp inoremap ; ;<Esc>:clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %    �   (   *   �      �autocmd FileType c,cpp inoremap ; ;<Esc>:clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %"5�_�                    )   �    ����                                                                                                                                                                                                                                                                                                                                                             _@�C     �   (   *   �      �autocmd FileType c,cpp inoremap ; ;<Esc>:clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %<CR> use <C-t> to trigger the translator5�_�                    )   �    ����                                                                                                                                                                                                                                                                                                                                                             _@�I    �   (   +   �      �autocmd FileType c,cpp inoremap ; ;<Esc>:clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %<CR>i use <C-t> to trigger the translator5�_�                     )   )    ����                                                                                                                                                                                                                                                                                                                                                             _@�s    �   (   *   �      �autocmd FileType c,cpp inoremap ; ;<Esc>:clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %<CR>i5�_�      !              )   �    ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   (   *   �      �autocmd FileType c,cpp inoremap ; ;<Esc>:!clang-format --style='{BasedOnStyle: llvm,IndentWidth: 4,AccessModifierOffset: -4}' -i %<CR>i5�_�       "           !   )   '    ����                                                                                                                                                                                                                                                                                                                                                             _@��    �   )   *   �    5�_�   !   #           "   )   (    ����                                                                                                                                                                                                                                                                                                                                                             _@�    �   (   *   �      (autocmd FileType c,cpp inoremap ; ;<Esc>5�_�   "   $           #   )   "    ����                                                                                                                                                                                                                                                                                                                                                             _@�}     �   (   *   �      4autocmd FileType c,cpp inoremap ; <Plug>(coc-format)5�_�   #   %           $   )   9    ����                                                                                                                                                                                                                                                                                                                                                             _@    �   (   *   �      9autocmd FileType c,cpp inoremap ; <Esc><Plug>(coc-format)5�_�   $   &           %   )   ;    ����                                                                                                                                                                                                                                                                                                                            *   %       *   %       v   >    _@��     �   (   *   �      ;autocmd FileType c,cpp inoremap ; <Esc><Plug>(coc-format)i;5�_�   %   '           &   )   E    ����                                                                                                                                                                                                                                                                                                                            *   %       *   %       v   >    _@��     �   (   *   �      Eautocmd FileType c,cpp inoremap ; <Esc>:call CocActionAsync('format')5�_�   &   (           '   )   "    ����                                                                                                                                                                                                                                                                                                                            *   %       *   %       v   >    _@��   	 �   (   *   �      Iautocmd FileType c,cpp inoremap ; <Esc>:call CocActionAsync('format')<CR>5�_�   '   )           (   )   J    ����                                                                                                                                                                                                                                                                                                                                                             _@Ð     �   (   *   �      Jautocmd FileType c,cpp inoremap ; ;<Esc>:call CocActionAsync('format')<CR>5�_�   (   *           )   )   #    ����                                                                                                                                                                                                                                                                                                                                                             _@Û     �   (   *   �      /autocmd FileType c,cpp inoremap ; ;<Esc>:Format5�_�   )   +           *   )   .    ����                                                                                                                                                                                                                                                                                                                                                             _@ß     �   (   *   �      .autocmd FileType c,cpp inoremap ; <Esc>:Format5�_�   *   ,           +   )   2    ����                                                                                                                                                                                                                                                                                                                                                             _@ã   
 �   (   *   �      2autocmd FileType c,cpp inoremap ; <Esc>:Format<CR>5�_�   +   -           ,   )   "    ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   (   *   �      4autocmd FileType c,cpp inoremap ; <Esc>:Format<CR>A;5�_�   ,   .           -   )   5    ����                                                                                                                                                                                                                                                                                                                                                             _@��    �   (   *   �      5autocmd FileType c,cpp inoremap ; ;<Esc>:Format<CR>A;5�_�   -   /           .   )   3    ����                                                                                                                                                                                                                                                                                                                                                             _@�i    �   (   *   �      4autocmd FileType c,cpp inoremap ; ;<Esc>:Format<CR>A5�_�   .   0           /   )        ����                                                                                                                                                                                                                                                                                                                                                             _@Ġ    �   (   *          6autocmd FileType c,cpp inoremap ; ;<Esc>:Format<CR>'"i5�_�   /   1           0   )        ����                                                                                                                                                                                                                                                                                                                                                             _@Ÿ     �   (   *          8" autocmd FileType c,cpp inoremap ; ;<Esc>:Format<CR>'"i5�_�   0   2           1   )   4    ����                                                                                                                                                                                                                                                                                                                                                             _@ž     �   (   *   �      6autocmd FileType c,cpp inoremap ; ;<Esc>:Format<CR>'"i5�_�   1   3           2   )   5    ����                                                                                                                                                                                                                                                                                                                                                             _@��    �   (   *   �      6autocmd FileType c,cpp inoremap ; ;<Esc>:Format<CR>`"i5�_�   2   4           3   )   6    ����                                                                                                                                                                                                                                                                                                                                                             _@��    �   (   *   �      6autocmd FileType c,cpp inoremap ; ;<Esc>:Format<CR>`]i5�_�   3   5           4   )   /    ����                                                                                                                                                                                                                                                                                                                                                             _@ƅ     �   (   *   �      6autocmd FileType c,cpp inoremap ; ;<Esc>:Format<CR>`]a5�_�   4   6           5   )   -    ����                                                                                                                                                                                                                                                                                                                                                             _@ƌ     �   (   *   �      =autocmd FileType c,cpp inoremap ; ;<Esc>:call         <CR>`]a5�_�   5   7           6   )   O    ����                                                                                                                                                                                                                                                                                                                                                             _@Ɯ    �   (   *   �      Vautocmd FileType c,cpp inoremap ; ;<Esc>:call CocActionAsync('format')         <CR>`]a5�_�   6   8           7   )   F    ����                                                                                                                                                                                                                                                                                                                                                             _@ƺ     �   (   *   �      Mautocmd FileType c,cpp inoremap ; ;<Esc>:call CocActionAsync('format')<CR>`]a5�_�   7   9           8   )   5    ����                                                                                                                                                                                                                                                                                                                                                             _@��    �   (   *   �      5autocmd FileType c,cpp inoremap ; ;<Esc>Format<CR>`]a5�_�   8   :           9   )        ����                                                                                                                                                                                                                                                                                                                                                             _@��    �   (   *          5autocmd FileType c,cpp inoremap ; ;<Esc>Format<CR>f;a5�_�   9   ;           :   )        ����                                                                                                                                                                                                                                                                                                                                                             _@�@    �   (   *          7" autocmd FileType c,cpp inoremap ; ;<Esc>Format<CR>f;a5�_�   :   <           ;   )   (    ����                                                                                                                                                                                                                                                                                                                                                             _@�j    �   (   *   �      5autocmd FileType c,cpp inoremap ; ;<Esc>Format<CR>f;a5�_�   ;               <   �        ����                                                                                                                                                                                                                                                                                                                                                             _H�    �   �   �   �      Cset statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}5�_�                    )        ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   (   *        5�_�                     (        ����                                                                                                                                                                                                                                                                                                                                                             _@��    �   '   )        5�_�                    *   4    ����                                                                                                                                                                                                                                                                                                                                                             _@��     �   *   +   �    �   )   +   �      Uautocmd FileType json syntax match Comment +\/\/.\+$get correct comment highlighting+5��