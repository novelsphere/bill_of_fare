; 
; macros.ks
; マクロ定義
; 
; Created by Satoshi SUZUKI 2014/02/08

[o2_iscript]
	var bool_cast_func = function(my_default){
		return function(my_bool){
			if( my_bool === undefined ){
				return my_default;
			}else if( my_bool === 'true' ){
				return true;
			}else{
				return false;
			}
		}
	};
	
	o2.campus_notes={
		bool_cast : bool_cast_func(true) ,
		bool_cast_false : bool_cast_func(false) ,
	};
	
	
	
[o2_endscript]

; メッセージボックスのクリア
[macro name="_cm"]
	[current layer="message1" page=%page|fore]
	[er]
	[current layer="message0" page=%page|fore]
	[er]
[endmacro]

; メッセージボックス
; 
; name: 発言者名を表示します。
; Campus Notes (KAGのもの)とは実装が異なることに注意して下さい。 作中でメッセージボックスが消えることはない、というのが最大の変更点ですね。
; [mbox n="井崎"]
; 
[macro name="mbox"]
	; (事実上の)入れ子関係が分かるようにタブでインデントしています。
	; 半角スペースは表示されちゃうから、タブコードを使う様に注意。
	
	; メッセージレイヤの文字を一旦削除します
	[_cm]
	
	; メッセージレイヤ1に名前を表示します
	[if o2_exp="mp.n"]
		[font size=16 color="0xffffff" bold=true]
			[current layer="message1" page=fore]
				[position width=500 visible=true]
				[ch text=%n]
			[current layer="message0"]
		[resetfont]
	[endif]
	
[endmacro]

; レイヤーの重なり順(index)やオフセットをモードによって切り替えます
; [mbox_mode mode=icon]
; [mbox_mode mode=normal]
; [mbox_mode mode=hidden]
[macro name="mbox_mode"]
	[if o2_exp=" mp.mode == 'icon' "]
		[call storage="configure.ks" target="*scenario_messagelayer_with_icon"]
	[elsif o2_exp=" mp.mode == 'hidden' "]
		[call storage="configure.ks" target="*scenario_messagelayer_hidden"]
	[else]
		[call storage="configure.ks" target="*scenario_messagelayer"]
	[endif]
[endmacro]


; 今のところ、KAG版Campus Notesとの互換性のために用意しているだけです。
;
[macro name="np"]
	[p]
[endmacro]

; シーン転換用です
[macro name="blackout"]
	[backlay]
		[_cm page=back]
		[char_erase trans=false]
		[bgi trans=false clear]
	[char_trans]
[endmacro]

[macro name="bgi"]
	[if o2_exp="o2.campus_notes.bool_cast(mp.trans)"]
		[backlay]
			[call storage="macros.ks" target="*_bgi_image"]
		[trans time=500]
		[wt]
	[else]
		[call storage="macros.ks" target="*_bgi_image"]
	[endif]
[endmacro]

;BGM再生
; 注意: volume はミュート機能で使うのでここでは弄れません！
; [bgm stop]
; [bgm storage="day1"]
; [bgm s="day2"] also OK.
[macro name="bgm"]
	[eval o2_exp="mp.fadetime=100"]
	[eval o2_exp="mp.storage=mp.s" cond="mp.s != false"]
	
	[if o2_exp="mp.stop"]
		;停止
		[eval o2_exp="f.bgm_playing=false"]
		[fadeoutbgm time=%fadetime]
	[elsif o2_exp="f.bgm_playing"]
		; 再生中ならクロスフェード
		[eval o2_exp="f.bgm_playing=true"]
		[xchgbgm storage=%storage time=%fadetime o2_start=%o2_start]
	[else]
		; 再生してないならフェードイン
		[eval o2_exp="f.bgm_playing=true"]
		[fadeinbgm storage=%storage time=%fadetime o2_start=%o2_start]
	[endif]
[endmacro]

; ミュート状態を入れ替えする
[macro name="mute_toggle"]
	[eval o2_exp="sf.muted = false" o2_cond="sf.muted === undefined"]
	[eval o2_exp="sf.muted = ! sf.muted"]
	[mute_configure]
[endmacro]

; ミュート状態に応じてボタンを表示し、ボリュームを変更する
[macro name="mute_configure"]
	;[eval o2_exp="sf.muted = false" o2_cond="sf.muted === undefined"]
	
	[if o2_exp="sf.muted"]
		[bgmopt volume="0"]
		[eval o2_exp="tf.graphic = 'volume_off.png'"]
	[else]
		[bgmopt volume="40"]
		[eval o2_exp="tf.graphic = 'volume_on.png'"]
	[endif]
	
	; メッセージレイヤ2にミュートのボタンを表示
	[wt]
	[current layer="message2" page="fore"]
	[position left=0 top=0 width=1376 height=774 marginl=0 margint=0 marginr=0 marginb=0 visible=true]
	[locate x=1300 y=20]
	[o2_sysbutton id="MUTE_BUTTON" graphic=&tf.graphic storage="macros.ks" target="*_mute_button"]
	; idが被る場合は以前のを消してくれるみたいです
[endmacro]


; 各種レイヤ用の便利マクロ
; [images storage="A.png B.png C.png ..." layer="0" page="back" left=100]
; 上記のように、スペース区切りで沢山のファイルを指定できるimage。
[macro name="images"]
	[eval o2_exp="tf.images = mp.storage.split(' ')"]
	[call storage="macros.ks" target="*_images_disp"]
[endmacro]

[macro name="freeimage_all"]
	; TODO: KAGにfor文がないのが悪いんや！
	[freeimage layer=0 page=%page]
	[freeimage layer=1 page=%page]
	[freeimage layer=2 page=%page]
[endmacro]

; キャラクターレイヤ系は長くなるので外部ファイル化します
[call storage="macros_char.ks"]

; 定義終わり。呼び出し元に戻る。
[return]


; マクロ内で定義しきれない処理は以下でラベルを利用した再帰の形で記述しています。

; tf.images にあるファイルから一個引っ張り出してpimageで表示
*_images_disp
	; 1件目はimageで描画
	[eval o2_exp="tf.image = tf.images.shift()"]
	[layopt page=%page layer=%layer index=%index left=%left top=%top]
	[image storage=&tf.image layer=%layer page=%page]
	
*_image_pop_disp_recursive
	[eval o2_exp="tf.image = tf.images.shift()"]
	; 実行内容: pimageで画像を追加で描画する
	; jumpしてきた場合、ここで%layerは参照出来ない
	[pimage storage=&tf.image layer=%layer page=%page dx=0 dy=0 o2_cond="tf.image"]
	
	;[jump storage="macros.ks" target="*_image_pop_disp_recursive" o2_cond="tf.images.length > 0"]
	
	; 以下、hotfix
	; 上記jumpをした後でreturn先がおかしくなるらしく、動作しない。
	; Campus Notes では、高々3回しかここのjumpは踏まないので、もう2回同じコードを書いておくことでfixする
	[eval o2_exp="tf.image = tf.images.shift()"]
	[pimage storage=&tf.image layer=%layer page=%page dx=0 dy=0 o2_cond="tf.image"]
	
	[eval o2_exp="tf.image = tf.images.shift()"]
	[pimage storage=&tf.image layer=%layer page=%page dx=0 dy=0 o2_cond="tf.image"]
[return]


*_bgi_image
	[eval o2_exp="mp.s = 'clear'" o2_cond="o2.campus_notes.bool_cast_false(mp.clear)"]
	[image storage=%s layer="base" page="back"]
[return]


; ミュートボタンから発火されるサブルーチン
*_mute_button
	[mute_toggle]
[return]
