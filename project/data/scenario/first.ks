; 
; first.ks
; OzKAGのデフォルトのエントリポイント
; 
; Created by usday (unknown date)
; Modified by Satoshi SUZUKI 2014/02/08

[eval o2_exp="f.isDebug = false;"]
; デバッグの際は以下をコメントアウトし、debug.jsをpluginsディレクトリに配置してください
; [eval o2_exp="f.isDebug = true;"]

[call storage="macros.ks"]
[call storage="configure.ks" target="*system"]

[jump storage="opening.ks"]
