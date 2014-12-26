; 
; configure.ks
; ノベルスフィア向けに初期状態を構成するためのスクリプト
; 
; Created by Satoshi SUZUKI 2014/02/08

; debug もしくは release を選んで記述してください

[eval o2_exp="alert('configure.ks: Please set the target value.');"]
[return]


; システムとしての初期状態設定
*system

[if o2_exp="f.isDebug"]
	[o2_loadplugin module="debug.js"]
[endif]

[return]


; オープニング向けの初期状態設定
*opening

; 初期のBGM音量を設定、ボタンを表示
[mute_configure]

[position page="fore" layer=message0 margint="0" marginr="0" marginb="0" marginl="0" color="0x000000" frame="" opacity="0"]
[position page="back" layer=message0 margint="0" marginr="0" marginb="0" marginl="0" color="0x000000" frame="" opacity="0"]
[layopt page="fore" layer=message0 left=0 top=300 visible=true]
[layopt page="back" layer=message0 left=0 top=300 visible=true]

; 何か色々と必要になるかもしれないので定義しておく。

[return]


; シナリオ向けの初期状態設定
*scenario

[call target="*scenario_messagelayer"]
[call target="*_scenario_charlayer"]

[return]

; メッセージレイヤ用。
*scenario_messagelayer

[o2_iscript]
	tf.message_offset_x = 120
	tf.message_margin_r = 160
[o2_endscript]

[call storage="configure.ks" target="*_scenario_messagelayer_with_tmp_vars"]

[return]


*scenario_messagelayer_with_icon

[o2_iscript]
	tf.message_offset_x = 220
	tf.message_margin_r = 120
[o2_endscript]

[call storage="configure.ks" target="*_scenario_messagelayer_with_tmp_vars"]

[return]


*scenario_messagelayer_hidden

[position layer="message0" page=fore visible=false]
[position layer="message1" page=fore visible=false]

[return]


*_scenario_messagelayer_with_tmp_vars

; メッセージレイヤ1を弄る。 名前の表示用レイヤ
[current layer=message1]
[eval o2_exp="tf.x = tf.message_offset_x + 60"]
[position top="560" left=&tf.x width="100" height="40"]
[position margint="0" marginr="0" marginb="0" marginl="0"]

; メッセージレイヤ0を弄る。 今後のため、このまま選択状態を維持します。
[current layer=message0 page=fore]
; メッセージレイヤ用の背景画像を設定
[position frame="window.png"]

[position visible=true]

; マージンとか設定 (config.jsonでやるとopeningで上書きしたときにしっちゃかめっちゃかになるからこっちでやります)
[position top="474" left="0" width="1376" height="300"]
[eval o2_exp="tf.x = tf.message_offset_x + 100"]
[position margint="120" marginr=&tf.message_margin_r marginb="0" marginl=&tf.x]

; 表示
[position visible=true]

[return]


;キャラクターレイヤ用。
*_scenario_charlayer
	[o2_iscript]
		tf.i = 0;
		tf.layers = []
		for(var key in o2.charLayers.chars) {
			tf.layers.push( o2.charLayers.chars[key] );
		}
	[o2_endscript]

*_scenario_charlayer_loop
	[o2_iscript]
		tf.layer = tf.layers.shift()
	[o2_endscript]
	
	; 774-768 キャラクターの下がちょっと欠けるので下げる
	[layopt layer=&tf.layer top=&o2.charLayers.topOffset]
	
	[jump target="*_scenario_charlayer_loop" o2_cond="tf.layers.length > 0"]
[return]



