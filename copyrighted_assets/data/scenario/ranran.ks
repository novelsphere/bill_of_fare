; 
; ranran.ks
; おはなしの中身。
; 
; Created by Satoshi SUZUKI 2014/02/08
; Written by 多加枝鋏見 (unknown date)

[blackout]

[call storage="configure.ks" target="*scenario"]

[bgm s="day1"]

[bgi s="circle_room"]

;[mbox]
; 第二稿　ＢＯＦ　RanRan編[np]

[mbox n="井崎"]
「ねぇねぇ、キリエー、RanRan行こうよ、RanRan」[np]

[キリエ storage="体腕組 普通 =" pos="1_1"]
[mbox n="キリエ"]
「……ん。別にいいけど」[np]

[mbox]
あたし、井崎京奈の誘いにその赤い女性はヘッドフォンを外しながら答えた。[np]

[mbox]
こいつの名前は朱砂キリエ。あたしと同じ、筑波大学芸術専門学群の三年生で、このサークル、[r]
オタク系創作サークル、近未来視聴覚研究会（通称：きんしけん）に所属している。[np]

[mbox]
それにしても、こいつはまったく相変わらず、[r]
誘われたんで嫌々行きますみたいな態度してくれやがるぜ……。[np]

[キリエ storage="体腕組 怒り3 ="]
[mbox n="キリエ"]
「でも、こないだみたくハメるのはナシだからね」[np]

[mbox]
そう言って頬袋にドングリを詰め込んだリスみたくむくれる表情が、[r]
しかし、満更でもないことを教えてくれる。素直じゃないんだからホント。[np]

[mbox n="井崎"]
「何、あんたまだあの時のこと根に持ってんの？」[np]

[mbox]
前にあの店に行ったとき、何食べるか聞いたら、こいつがやっぱりぶっきらぼうに、[r]
あたしと同じのでいい、とか言うから意地悪したくなって、わざと特盛りを注文してやったのだ。[np]

[mbox]
巨大な丼を前に内心動揺するキリエは、うん、それなりに傑作だった。[np]


[char_move name="キリエ" pos="2_2"]
[心 storage="体 笑顔 =" pos="1_2"]

[mbox n="心"]
「え？　RanRan……？」[np]

[mbox]
と、あたしの耳は、虫の羽音みたいに小さな、消え入りそうなつぶやきを捉えた。[r]
そこにいたのは黒い服に身を包んだ少女。[np]

[mbox]
いや、大学生なんだから１８歳以上だし、少女というのも妙だけど、その華奢な体躯と童顔から、[r]
どうしても少女としか呼ぶ気にならない。[np]

[mbox]
この子は小川心、心理学類の二年生で、きんしけんのレビュー班に所属している。[np]

[mbox]
班というのはきんしけん独特の制度で、各班にわかれて創作活動を行う。[r]
ちなみにあたしとキリエはイラスト班に所属していて、[r]
ちなみにちなみにこのあたしは、そのイラスト班の班長でもある。[np]

[mbox]
と、あたしらの話はいい。心ちゃんに話を戻そう。[np]

[mbox]
そんな心ちゃんはあたしの視線を受けると、逃げるように視線を逸らした。[r]
どうもこの子は人懐っこそうなのに、いまひとつ引っ込み思案なところがある。[r]
仕方ない。ここはあたしが一肌脱いであげましょう。[np]

[mbox n="井崎"]
「あれー、何々？　心ちゃんも行きたいの、RanRan？」[np]

[心 storage="体腕下ろし 悲観閉口 ="]
[mbox n="心"]
「あ、い、いえ……その……」[np]

[mbox]
あたしの指摘に、心ちゃんは口ごもる。[np]

[mbox n="井崎"]
「そぉ？　今なんか行きたそうな目をしてたけど？」[np]

[mbox n="井崎"]
「せっかくだし、心ちゃんも一緒に行かない？」[np]

[心 storage="体 悲観 ="]
[mbox n="心"]
「え、でも……その、私なんかが先輩たちの邪魔をするわけには……」[np]

[mbox n="井崎"]
「なーに言ってんの。邪魔なわけないじゃないむしろ大歓迎よ」[np]

[mbox n="井崎"]
「あんたもそうでしょ、キリエ？」[np]

[キリエ storage="体 怒り3 ="]
[mbox n="キリエ"]
「なんで私にふるのよ」[np]

[キリエ storage="体腕組 普通閉口 ="]
[mbox n="キリエ"]
「まあ、心ちゃんなら別に一緒に来てくれても問題ないけど」[np]

[mbox]
予想通り、興味なさげに返すキリエ。素直じゃないんだから、もー。[np]

[mbox]
でも、言質取ったり。[np]

[mbox n="井崎"]
「というわけで、オールオッケー問題ナッシン。一緒に行こうよ心ちゃん」[np]

[心 storage="体腕下ろし 普通2 ="]
[mbox n="心"]
「は、はい……。では、お言葉に甘えさせていただきます……」[np]

[mbox]
そうして、やっぱり申し訳なさそうに、心ちゃんは頭を下げた。[np]

[blackout]

*in_the_car

[mbox_mode mode=icon]

[backlay]
	[bgi s="in_the_car" trans=false]
	;[心アイコン storage="体 笑顔 =" trans=false]
[char_trans]

[心アイコン storage="体 笑顔 ="]

[mbox n="心"]
「実は私、RanRanって行くの初めてなんです」[np]

[mbox n="井崎"]
「へー、そうなの？」[np]

[mbox]
あたしの車で移動中、心ちゃんはそう切り出す。[np]

[心アイコン storage="= 笑顔3 ="]
[mbox n="心"]
「名前は以前から知ってて気になってたんですけど、なかなか機会がなくて」[np]

[char_erase]
[mbox n="井崎"]
「うんうん、そうね。筑波大生だったら、三大重食は是非一度味わっておくべきよ」[np]

[心アイコン storage="体 普通3 ="]
[mbox n="心"]
「え？　さ、三大ジュウショク？　何ですかそれ？」[np]

[mbox]
心ちゃんが小首を傾げると、キリエがぽつりとつぶやいた。[np]

[backlay]
	[char_erase name="心" trans=false]
	[キリエアイコン storage="体 普通2 =" trans=false]
[char_trans]

[mbox n="キリエ"]
「会長、副会長、それから会計」[np]


[backlay]
	[char_erase name="キリエ" trans=false]
	[心アイコン storage="体 普通3 =" trans=false]
[char_trans]
[mbox n="心"]
「はい？」[np]

[backlay]
	[char_erase name="心" trans=false]
	[キリエアイコン storage="体 笑顔2 =" trans=false]
[char_trans]
[mbox n="キリエ"]
「三大重職」[np]

[char_erase]
[mbox n="井崎"]
「……キリエ？」[np]

[キリエアイコン storage="体 笑顔 ="]
[mbox n="キリエ"]
「あ、あはは、冗談じょーだん」[np]

[mbox]
キリエは笑って誤魔化す。心ちゃんも苦笑いしている。[np]

[mbox]
ギャグはクソ寒いけど、キリエも案外愛嬌がある。[r]
もう少しそれを表に出せたらと思わなくもないけど、それも無理な話なんだろうな、とも思う。[np]

[mbox]
とりあえずあたしは、キリエのせいで冷えた場を元に戻す。[np]

[char_erase]

[mbox n="井崎"]
「ほら、軽い食事のことを軽食っていうでしょ？　んで、その反対が重食。[r]
リーズナブルに、ガッツリ食べられるお店ってこと」[np]

[mbox n="井崎"]
「夢屋、クラレット、そしてRanRan。三つ合わせて三大重食って呼ばれてるの。[r]
知らなかった？」[np]

[心アイコン storage="体 笑顔3 ="]
[mbox n="心"]
「え、えーっと……そういえば何となく聞いたことがあるような……」[np]

;[心アイコン storage="= = ="]
[mbox n="心"]
「それで重食って、いったいRanRanは何のお店屋さんなんですか？」[np]


[backlay]
	[char_erase name="心" trans=false]
	[キリエアイコン storage="体 普通2 =" trans=false]
[char_trans]
[mbox n="キリエ"]
「丼もののお店かな」[np]

[char_erase]
[mbox n="井崎"]
「ふふ、違うぞキリエよ。あれは丼ではない、RanRanという食べ物なのだ」[np]

[キリエアイコン storage="体 悲観4 ="]
[mbox n="キリエ"]
「なんで某二郎系みたいなことになってんの」[np]


[backlay]
	[char_erase name="キリエ" trans=false]
	[心アイコン storage="体 普通2 =" trans=false]
[char_trans]
[mbox n="心"]
「……と、とにかく丼なんですね」[np]

[心アイコン storage="= = ="]
[mbox n="心"]
「食べ切れますかね……」[np]

[char_erase]
[mbox n="井崎"]
「そうねぇ。心ちゃんなら食べるどころか逆に丼に食べられちゃうかもねぇ」[np]

[心アイコン storage="体 悲観3 ="]
[mbox n="心"]
「ええ！？」[np]

[char_erase]
[mbox n="井崎"]
「はは、冗談じょーだん」[np]

[キリエアイコン storage="体 怒り2 ="]
[mbox n="キリエ"]
「ちょっとけーなちゃん。それ私のセリフ」[np]

[char_erase]
[mbox n="井崎"]
「固いこと言わなーい。リスペクトよ、リスペクト」[np]

[mbox]
あたしがそう切り返すと、キリエはまたリスみたく頬袋を膨らませる。[r]
おおっと、これこそリスペット！[np]

[mbox]
とか思ったけど、さっきのキリエ以上にすべりそうだから口にするのはやめた。[r]
心ちゃんはまだ怯えているようだったから、あたしは安心させるように言う。[np]

[mbox n="井崎"]
「大丈夫大丈夫。絶対損はさせないから」[np]

[blackout]

[mbox_mode mode="normal"]

[bgm s="day1_vol3" o2_start="00:02:50"]

[backlay]
	[bgi s="ranran_outside" trans=false]
	[キリエ storage="体腕組 笑顔2 =" pos="1_2" trans=false]
	[心 storage="体 普通3 =" pos="2_2" trans=false]
[char_trans]

[mbox n="心"]
「ここがRanRanですか。何だかアパートみたいですね」[np]

[mbox]
ほぇーという鳴き声でも聞こえてきそうな感心気な表情で、[r]
心ちゃんはRanRanのネオンを見上げる。[np]

[mbox]
まあ、個人経営のお店だし、たぶん実際にここに住んでいるんだろうから、[r]
アパートという表現もあながち間違いじゃない気がする。[np]
[mbox]
と、そんなことを考えていたら、爽やかな青いワンピースの女性が目に入った。[np]

[mbox n="井崎"]
「あ、文子ちゃん。お疲れ様ー」[np]

[char_move name="キリエ" pos="1_3" wait=false]
[char_move name="心" pos="2_3"]

[文子 storage="体指差 普通 =" pos="3_3"]
[mbox n="文子"]
「……おや、皆さん。奇遇ですね。こんばんは」[np]

[mbox n="キリエ"]
「あれ、文子ちゃんじゃない」[np]

[心 storage="体腕下ろし 笑顔 ="]
[mbox n="心"]
「あ、畔上先輩。お疲れ様です」[np]

[mbox]
彼女は畔上文子ちゃん。比較文化学類の四年生で、きんしけん小説班の班長だ。[np]

[文子 storage="体 悲観 ="]
[mbox n="文子"]
「サークルに顔を出せなくてすみません。少々用事がありまして」[np]

[mbox]
と文子ちゃんは心ちゃんとはまた別方向で申し訳なさそうに言う。[r]
まあ、四年生ともなれば、色々と忙しいのだろう。[np]

[文子 storage="体指差 笑顔4 ="]
[mbox n="文子"]
「ところで、皆さんもRanRanですか？　私もご一緒させていただいても？」[np]

[mbox n="井崎"]
「うん、そりゃあもちろん。大歓迎よ。ね？」[np]

[mbox]
後ろの二人に視線を投げると、キリエは軽く頷き、心ちゃんはコクコクと首を縦にふった。[r]
でもお淑やかそうな文子ちゃんがRanRanに来るなんて、ちょっと意外。[np]

[blackout]

[backlay]
	[bgi s="ranran_inside" trans=false]
	[キリエ storage="体腕組 普通 =" pos="1_3" trans=false]
	[心 storage="体 悲観閉口 =" pos="2_3" trans=false]
	[文子 storage="体指差 笑顔4 =" pos="3_3" trans=false]
[char_trans]

[mbox]
店内に入るといつもの通り、学生たちでごった返していた。[np]


[mbox n="心"]
「…………」[np]

[mbox]
店内を見回していた心ちゃんは、テーブルの上に乗っているものを見て絶句し、[r]
巨人の国にでも迷い込んでしまったのかと目を白黒させていた。[np]
[mbox]
それもそのはず。[r]
洗面器のようだとも形容される丼は、人の遠近感を鈍らせるほどのビッグサイズだ。[r]
まあ、あたしなんかは食欲中枢を刺激されちゃうんだけどねー。[np]

[心 storage="体腕下ろし 普通3 ="]
[mbox n="心"]
「学食と同じように券売機でメニューを選ぶんですね」[np]

[心 storage="= = ="]
[mbox n="心"]
「ど、どれを選べばいいのでしょう……？」[np]

[mbox n="井崎"]
「やっぱりここに来たからにはＢＩＧ丼を食べなきゃ損でしょ」[np]

[キリエ storage="体 普通2 ="]
[mbox n="キリエ"]
「私はこないだ食べたから別のにしようかな。他にも色々あるし」[np]

[心 storage="体 悲観4 ="]
[mbox n="心"]
「うう……ＢＩＧ丼は食べきれる自信が……」[np]

[心 storage="= = ="]
[mbox n="心"]
「三色丼もネギトロ丼も肉野菜丼も美味しそうです……」[np]

[心 storage="= = ="]
[mbox n="心"]
「でもここはせっかく来たんだし、ＢＩＧ丼……うう……」[np]

[文子 storage="体指差 普通 ="]
[mbox n="文子"]
「『To BIG or not to BIG : that is a question.』」[np]

[文子 storage="= = ="]
[mbox n="文子"]
「ＢＩＧ丼にするか否か。それが問題ですね」[np]

[キリエ storage="体腕組 笑顔2 ="]
[mbox n="キリエ"]
「何うまいこと言ってんの」[np]

[mbox]
文子ちゃんお得意のシェイクスピアの引用だ。[r]
おおう、そのネタはそういう風にも使えるのか。[np]

[mbox n="井崎"]
「そんな心ちゃんにピッタリなメニューがあるよん」[np]

[mbox n="井崎"]
「その名も、ミニＢＩＧ丼！」[np]

[心 storage="体腕下ろし 悲観2 ="]
[mbox n="心"]
「み、ミニＢＩＧ丼……？」[np]

[キリエ storage="体 怒り2 ="]
[mbox n="キリエ"]
「そんなのあったんだ。でもミニなのかＢＩＧなのか、結局どっちなのよ」[np]

[心 storage="体 普通 ="]
[mbox n="心"]
「すごく釈然としないネーミングですね」[np]

[mbox]
そりゃそうだけど。[r]
でも、牛のトンカツとか、大人のお子様ランチとかよりはマシだと思う。[np]

[心 storage="体腕下ろし 笑顔 ="]
[mbox n="心"]
「『Too BIG or not too BIG : that is a question.』」[np]

[心 storage="= = ="]
[mbox n="心"]
「大きすぎるのか、大きすぎないのか、それが問題ですね……」[np]

[キリエ storage="体腕組 悲観3 ="]
[mbox n="キリエ"]
「心ちゃんまで何うまいこといってんの」[np]

[mbox n="井崎"]
「まあ、ここの丼は美味いからね」[np]

[キリエ storage="体 笑顔2 ="]
[mbox n="キリエ"]
「そういう問題？」[np]

[mbox n="井崎"]
「『That is a BIG question.』」[np]

[mbox]
大問題、よ。[np]

[blackout]

[backlay]
	[bgi s="ranran_inside" trans=false]
	[心 storage="体腕下ろし 普通閉口 =" trans=false]
	[キリエ storage="体 普通閉口 =" trans=false]
	[文子 storage="体 普通 =" trans=false]
[char_trans]

[mbox]
結局、心ちゃんはミニＢＩＧ丼を選んだ。[r]
ちなみにあたしは肉野菜丼、キリエはネギトロ丼、文子ちゃんは三色丼だ。[np]

[mbox]
券を店員さんに渡して、あたしたち四人は席につく。[np]

[心 storage="体 普通2 ="]
[mbox n="心"]
「あれ？　あそこのカウンターにいるのはもしかして会長……？」[np]

[キリエ storage="体腕組 普通 ="]
[mbox n="キリエ"]
「あ、ホントだ。何かに取り憑かれたように食べてるね」[np]

[mbox]
二人の視線の先にいたのは、確かに我らがきんしけん会長だった。[r]
後姿でもあの熊のような巨体は見間違えるはずもない。[np]

[mbox]
どうやらこちらには気づいていない様子で、[r]
巨大な丼を前にして、一心不乱に箸を動かしている。[np]

[mbox n="井崎"]
「って、うわ、あれ特盛りじゃん。会長やるねぇ」[np]

[文子 storage="体指差2 普通2 ="]
[mbox n="文子"]
「ふむ……。どうやら特盛り攻略に熱中しているようですし、そっとしておきましょうか」[np]

[キリエ storage="体腕組 悲観3 ="]
[mbox n="キリエ"]
「攻略って……。なんなの、特盛りって食事を越えた何かなの？」[np]

[心 storage="体腕下ろし 笑顔 ="]
[mbox n="心"]
「まさにラスボス級のサイズですね……」[np]

[心 storage="= = ="]
[mbox n="心"]
「で、でも安心しました。RanRanはぼっちで来ても大丈夫なんですね」[np]

[心 storage="体 悲観 ="]
[mbox n="心"]
「あ！　い、いえ、とはいっても皆さんとお食事するのが嫌なわけじゃなくてですね……！」[np]

[キリエ storage="体 普通 ="]
[mbox n="キリエ"]
「そう？　別に私は嫌われても構わないけど」[np]

[心 storage="体腕下ろし 悲観2 ="]
[mbox n="心"]
「え？」[np]

[キリエ storage="体腕組 怒り閉口 ="]
[mbox n="キリエ"]
「だって好かれたら欠きたくなっちゃうでしょ」[np]

[心 storage="体 悲観3 ="]
[mbox n="心"]
「え？　え？」[np]

[mbox n="井崎"]
「ちょっとキリエ、心ちゃん困ってるでしょー」[np]

[mbox n="井崎"]
「ゴメンね心ちゃん。この子けっこう厨二ってるからさー」[np]

[心 storage="体腕下ろし 悲観閉口 ="]
[mbox n="心"]
「は、はぁ……」[np]

[キリエ storage="体 驚き ="]
[mbox n="キリエ"]
「ちゅ、厨二じゃないもん！」[np]

[mbox]
顔をその衣装みたく真っ赤にして反駁するキリエ。[r]
まあ、『アレ』が厨二程度で収まるものならよかったんだけどね。[np]

[bgm s="map_vol3" o2_start="00:01"]

[blackout]

[bgi s="CG_ranran_A"]

[mbox]
しばらくして、注文の品が運ばれてきた。[np]

[mbox]
それぞれの丼はもちろんどれも美味しそうだったけど、[r]
やはり一番気になったのは心ちゃんの前に置かれたミニＢＩＧ丼だ。[np]

[mbox]
ミニとはいえ、普通のお店の並盛り以上はある気がする。[r]
というか、心ちゃんの前に置かれているせいで無性に大きく見えているのかもしれない。[np]

[mbox]
まあ、それはそれとして、冷めないうちにいただきましょう。[np]

[mbox]
一同『いただきます』[np]

[mbox]
心ちゃんはしばらくミニＢＩＧ丼をためつすがめつ眺めていたけど、[r]
意を決してご飯と具の山を切り崩しにかかった。[r]
いや、そんな気合いがいるものじゃないと思うんだけどね。[np]

[bgi s="CG_ranran_B"]

[mbox]
ぱくり。[np]

[mbox]
一口食べると、心ちゃんはまん丸な目をさらに丸くして、次々と具を賞味した。[np]

[mbox n="心"]
「お……」[np]

[bgi s="CG_ranran_C"]
[mbox n="心"]
「……お、美味しいです！」[np]

[mbox n="心"]
「ジューシーな唐揚げにシャキシャキのモヤシと野菜炒め！！[r]
そしてトロトロの卵と麻婆豆腐！！」[np]

[mbox n="心"]
「すべての具がご飯という舞台の上で各々の役割を演じ、[r]
それらが互いに喧嘩することなく見事に調和して絶妙なハーモニーを奏でてます！！[r]
まさに丼のオーケストラです〜っ！！！！」[np]

[mbox n="心"]
「美味しいです！！　絶品です！！　最高です〜っ！！！！」[np]

[mbox]
見開いた目をキラキラさせながら心ちゃんは感動を口にする。[np]

[mbox]
なんだか某グルメレポーターを思い出しちゃったけど、[r]
レビュー班である彼女の血がそうさせるのかもしれない。[r]
いや、レビュー班って血族じゃないけどさ。[np]

[mbox]
何にせよ、そんなに嬉しそうな顔してもらえるなら、連れてきた甲斐もあるってもんよ。[np]

[mbox n="井崎"]
「だから言ったでしょ。損はさせないって」[np]

[mbox n="心"]
「はい！」[np]

[mbox n="心"]
「それになんて言うんでしょうか、お袋の味って感じですよね。[r]
心まで温まるような……そんな味です」[np]

[mbox n="井崎"]
「ふーむ。これは友達から聞いた話だけどさ、[r]
実はこの丼、岐阜県の窯から取り寄せてる高級品らしいよ」[np]

[mbox n="心"]
「ええ！　そうなんですか！？」[np]

[mbox n="井崎"]
「うん。だから、なかなか冷めなくて、丼ものが最後まで熱々で食べられるんだって」[np]

[mbox n="井崎"]
「そういう心遣いが味にも現れてるんだろうね」[np]

[mbox n="心"]
「そ、そうなんですか！　洗面器みたいだな、とか思ってしまってごめんなさい！」[np]

[mbox]
あ、やっぱり思ってたんだ。[np]

[mbox n="キリエ"]
「私はてっきり、ラーメンとかチャンポンとかの丼かと思ってた」[np]

[mbox n="文子"]
「実際に、昔はラーメン屋だったらしいですね」[np]

[mbox n="キリエ"]
「あ、そうなの？」[np]

[mbox n="文子"]
「ええ。ほら、天久保２丁目にリッチモンド２番街という建物がありますよね。[r]
あそこでやっていたらしいです。[np]

[mbox n="文子"]
当時はリッチモンドに隣接する形でゲームセンターもあったそうで、[r]
そちらで遊びながらランランの行列を待たれる方も多かったそうですよ」[np]

[mbox n="井崎"]
「ほほぅ、なるへそ。にしても、何で文子ちゃんもそんなこと知ってんの？」[np]

[mbox n="文子"]
「いえ、ＯＢの方に聞いたことが」[np]


[mbox n="心"]
「へー、店に歴史あり、ってことですね」[np]

[mbox n="キリエ"]
「それより心ちゃん、箸止まってるけど大丈夫？」[np]

[bgi s="CG_ranran_B"]

[mbox n="心"]
「はっ！　もぎゅもぎゅ……」[np]

[mbox n="キリエ"]
「無理そうなら手伝ってあげなくもないけど？」[np]

[mbox n="心"]
「いいえ。レビュー班の意地です。レビュー対象は最後まで味わいます！　けぷっ」[np]

[mbox n="キリエ"]
「……そう。ならいいけど」[np]

[mbox]
本人はああ言ってるけど、けっこうキツい気がする。[r]
まあ、いざとなったらお持ち帰りパックもあるけどね。[np]

[blackout]

[backlay]
	[bgi s="ranran_inside" trans=false]
	[心 storage="体 悲観 汗" pos="1_3" trans=false]
	[キリエ storage="体腕組 普通閉口 =" pos="2_3" trans=false]
	[文子 storage="体 普通 =" pos="3_3" trans=false]
[char_trans]

[心 storage="体腕下ろし = ="]
[mbox n="心"]
「ふぅ……食べきり、ました。（ぱたり）」[np]

[mbox n="井崎"]
「おお、あの状態から食べきりおったか。やるなお主」[np]

[キリエ storage="体 笑顔 ="]
[mbox n="キリエ"]
「頑張ったね」[np]

[心 storage="体 悲観4 -"]
[mbox n="心"]
「うぅ……美味しかったですけど、満腹です……」[np]

[mbox n="井崎"]
「それじゃあ腹ごなしにちょっと歌ってく？　ちょうど近くにカラオケ屋があるし」[np]

[文子 storage="体指差2 笑顔 ="]
[mbox n="文子"]
「ああ、BanBanですね」[np]

[心 storage="体腕下ろし 怒り2 ="]
[mbox n="心"]
「BanBan？　RanRanの近くにBanBan？　何か陰謀めいたものを感じます……」[np]

[キリエ storage="体腕組 普通 ="]
[mbox n="キリエ"]
「誰の陰謀よ。誰の」[np]

[文子 storage="= 普通2 ="]
[mbox n="文子"]
「まあそれは置いておきまして……。[r]
どうやら後がつかえているようですし、そろそろお暇しましょうか」[np]

[mbox]
ふと見れば、混んできたのか券売機のあたりに何人が並んでいた。[r]
おっとりしているようで、文子ちゃんはかなり気が回る。[r]
そういうとこ、やっぱり憧れちゃうなー。[np]

[mbox n="井崎"]
「おっと、そうねー。それじゃあ、ご馳走様でしたー」[np]

[backlay]
 [文子 storage="体 笑顔 = =" trans=false]
 [キリエ storage="体 笑顔 = =" trans=false]
 [心 storage="= 笑顔 = =" trans=false]
[char_trans]

[mbox n="文子・キリエ・心"]
『ご馳走様でした』[np]

[blackout]

[jump storage="ending.ks"]