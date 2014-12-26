; 
; macros_char.ks
; キャラクター系のマクロ定義
; 
; Created by Satoshi SUZUKI 2014/02/08

; ここの定義はちょっと雑ですが、実用上問題ないかなという判断です。
[o2_iscript]
	f.fadeTime = 300;
	f.moveTime = f.fadeTime;
	
	var width = 1376; // ウィンドウの横幅
	var offset = -350/2; // キャラクターの横幅、の半分
	
	var topOffset = 6; // 774-768, キャラクター画像の高さと画面の高さが少しだけ異なるので。
	o2.charLayers={
		topOffset : topOffset ,
		chars : {
			'文子': 0 ,
			'心': 1 ,
			'キリエ': 2
		}, 
		previous : {
			'文子': {
				storage: [] 
			} ,
			'心': {
				storage: [] 
			} ,
			'キリエ': {
				storage: [] 
			}
		},
		positions : {
			"icon_kokoro": [-20, 320],
			"icon_kirie": [-40, 480],
			"1_1" : [Math.round( width*1/2 + offset ), topOffset],
			"1_2" : [Math.round( width*1/3 + offset ), topOffset],
			"2_2" : [Math.round( width*2/3 + offset ), topOffset],
			"1_3" : [Math.round( width*1/4 + offset ), topOffset],
			"2_3" : [Math.round( width*2/4 + offset ), topOffset],
			"3_3" : [Math.round( width*3/4 + offset ), topOffset],
		},
		pathTo : function(pos_key){
			path = "("+this.positions[pos_key][0]+","+this.positions[pos_key][1]+")"
			return path
		},
		bool_cast : o2.campus_notes.bool_cast
	};
	
[o2_endscript]


; キャラクターを表示します
; 
; trans : トランジションの有無, true/false, デフォルトtrue
; name : キャラクターの名前。 ごった煮のものと違って1人しか表示できません。
; storage
[macro name="char_disp"]
	[o2_iscript]
		// storage
		var parts = mp.storage.split(' ')
		var mergedParts = [];
		for(var i=0; i<parts.length; i++){ /* > */
			var part = parts[i];
			if( part === "=" ){
				mergedParts[i] = o2.charLayers.previous[mp.name].storage[i];
			}else if( part === "-" ){
				mergedParts[i] = undefined;
			}else{
				mergedParts[i] = part
			}
			
		}
		
		o2.charLayers.previous[mp.name].storage = mergedParts;
		
		var myStorages = [];
		for(var i=0; i<mergedParts.length; i++){ /* > */
			var part = mergedParts[i];
			if(part){
				myStorages.push(mp.name + "_" + part)
			}
		}
		mp.myStorage = myStorages.join(' ')
		
		// pos
		if(mp.pos){
			tf.left = o2.charLayers.positions[mp.pos][0]
			tf.top  = o2.charLayers.positions[mp.pos][1]
			o2.charLayers.previous[mp.name].position = o2.charLayers.positions[mp.pos];
		}else{
			tf.left = o2.charLayers.previous[mp.name].position[0];
			tf.top  = o2.charLayers.previous[mp.name].position[1];
		}
		
		mp.myLayer = o2.charLayers.chars[mp.name]
		
		// iconがつく時はメッセージレイヤより上に表示する必要があるので、レイヤのindexを自前で設定する
		if( mp.pos && mp.pos.match("icon") ){
			tf.layer_index = 1010000 + (mp.myLayer+1)*1000
		}else{
			tf.layer_index = (mp.myLayer+1)*1000
		}
		
	[o2_endscript]
	
	; transに依って、どちらかの方法で表示
	
	[if o2_exp="o2.charLayers.bool_cast(mp.trans)"]
		[backlay]
			[images storage=%myStorage layer=%myLayer page="back" left=&tf.left top=&tf.top index=&tf.layer_index]
		[char_trans]
	[else]
		[images storage=%myStorage layer=%myLayer page="back" left=&tf.left top=&tf.top index=&tf.layer_index]
	[endif]
[endmacro]


; キャラクターを消去します
; 
; trans : トランジションの有無, true/false, デフォルトtrue
; name : キャラクターの名前。 ごった煮のものと違って1人しか表示できません。 指定がないときは全員削除の char_erase_all にリダイレクトしています。
; storage
[macro name="char_erase"]
	[if o2_exp="mp.name !== undefined"]
		[char_erase_single *]
	[else]
		[char_erase_all *]
	[endif]
[endmacro]

[macro name="char_erase_single"]
	[eval o2_exp="mp.myLayer = o2.charLayers.chars[mp.name]"]
	[if o2_exp="o2.charLayers.bool_cast(mp.trans)"]
		[backlay]
			[freeimage layer=%myLayer page="back"]
		[char_trans]
	[else]
		[freeimage layer=%myLayer page="back"]
	[endif]
[endmacro]

; 全キャラクターを消去します
; trans : トランジションの有無, true/false, デフォルトtrue
;
[macro name="char_erase_all"]
	[if o2_exp="o2.charLayers.bool_cast(mp.trans)"]
		[backlay]
			[freeimage_all page="back"]
		[char_trans]
	[else]
		[freeimage_all page="back"]
	[endif]
[endmacro]

[macro name="char_trans"]
	[trans time=&f.fadeTime]
	[wt]
[endmacro]

;
; キャラクターを移動します。
; name: 移動するキャラクターの名前
; pos: 移動先の識別子, "n_m" で m人中n人目として表示, mは3以内にしてる。 上のコード書き換えればすぐ追加できるけど。
; wait : wmで待つか否か。 (複数を同時に移動するため)
[macro name="char_move"]
	[o2_iscript]
		mp.path = o2.charLayers.pathTo(mp.pos);
		mp.myLayer = o2.charLayers.chars[mp.name];
		o2.charLayers.previous[mp.name].position = o2.charLayers.positions[mp.pos];
	[o2_endscript]
	[move layer=%myLayer path=%path time=&f.moveTime]
	[wm o2_cond="o2.charLayers.bool_cast(mp.wait)"]
[endmacro]

; char_disp のエイリアスマクロを作成
[macro name="キリエ"]
	[char_disp name="キリエ" *]
[endmacro]

[macro name="文子"]
	[char_disp name="文子" *]
[endmacro]

[macro name="心"]
	[char_disp name="心" *]
[endmacro]

[macro name="心アイコン"]
	[char_disp name="心" pos="icon_kokoro" *]
[endmacro]

[macro name="キリエアイコン"]
	[char_disp name="キリエ" pos="icon_kirie" *]
[endmacro]

[return]