; 
; opening.ks
; オープニング
; 
; Created by Satoshi SUZUKI 2014/02/08

[call storage="configure.ks" target="*opening"]

[bgm s="day1_vol3" o2_start="00:02"]

[backlay]
	[bgi s="opening.png" trans=false]
	[current layer="message0" page="back"]
	[locate x=170 y=40]
	[button graphic="start.png" storage="ranran.ks"]
[trans time=1000]
[s]

[jump storage="ranran.ks"]

*macro_explain

[call storage="configure.ks" target="*scenario"]
[mbox]

ここでは、あおみかんによるマクロの解説を行います。[np]

[mbox]
まず、ごった煮のスクリプトと似たような形式でキャラクターを表示します。[np]

[キリエ storage="体 笑顔" pos="1_1"]

[mbox]
ごった煮verとは異なり、表示場所の自動計算を行わないので、posという引数を渡す必要があります。[r]
posが n_m のとき、m人中のn人目として表示する事を表します。[np]

[mbox]
今のところ対応しているのは、1_1, 1_2, 2_2, 1_3, 2_3, 3_3 の 1+2+3=6種類です。[r]
少し人と人の間隔が狭い気がするので、数値は調整した方がが良いかもしれません。[np]

[mbox name="AknEp"]
発話者を変えるときや発話内容のリセットをしたいときはmboxタグを使って下さい。[np]

[mbox]
ここで、表情変化が正しく動く事を確認するために、キリエさんにはちょっとむっとしてもらいましょう。[np]

[キリエ storage="= 怒り3"]

[mbox]
はい。 キリエさんありがとうございました。[np]

[mbox]
また、キャラクターを追加で登場させるときが、ごった煮verよりも複雑です。[np]

[char_move name="キリエ" pos="1_2"]
[心 storage="体 笑顔" pos="2_2"]

[mbox]
複数人を処理するときは、さらに厄介です。[np]

[char_erase name="キリエ"]
[char_move name="心" pos="1_1"]

[mbox]
こんな感じです。[np]

[backlay]
	[char_erase name="心" trans=false]
	[文子 storage="体 笑顔" trans=false pos="1_2"]
	[キリエ storage="= =" trans=false pos="2_2"]
[char_trans]

[mbox]
同時表示はこんな感じになります。[np]


[char_erase]
[心 storage="= =" pos="1_1"]

[mbox]
一回元に戻します[np]

[mbox]
クロスフェードで出てくるのが気持ち悪ければ、前後を分離する事も検討して下さい。[np]

[char_erase name="心"]
; ※ ここで一度トランジションを待っています。
[backlay]
	[文子 storage="体 笑顔" trans=false pos="1_2"]
	[キリエ storage="= =" trans=false pos="2_2"]
[char_trans]

[mbox]
こんなかんじですね。こっちの方が自然なケースが多そうだな、[np]

[mbox]
あと、2人いるところに1人を追加表示するの、面倒臭いですね。[np]

[char_move name="文子" pos="1_3" wait=false]
[char_move name="キリエ" pos="2_3"]
; 最後の人だけwait=falseしないようにすると、moveを待ってくれる
[心 storage="= =" pos="3_3"]

;[char_trans]

[mbox]
ぱっと見は、ごった煮とほとんど一緒なんですけどね。[np]



[mbox]
じゃあ、最初に戻りますね。[np]

[char_erase]

[jump storage="opening.ks" target="*macro_explain"]
