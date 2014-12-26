Campus Notes - Bill of Fare - のOSS版
============

O2Engine製 Campus Notes - Bill of Fare - のOSS版です

## これはなに？

筑波大学発 ゲーム制作サークル 4th cluster が公開しているノベルゲーム「[Campus Notes - Bill of Fare](http://4th-cluster.com/campus_notes/bill_of_fare/)」のソースコード群です。

ノベルスフィアで提供されているO2Engineを用いて同様な形式の作品を制作するための参考資料としてオープンソースにて提供しています、

### 実行するまでの手順

* [ノベルスフィア Developer Program](https://developer.novelsphere.jp) へ登録し、[O2EngineのSDK](https://developer.novelsphere.jp/dl/sdk)を手に入れてください
	* O2Engineの実行方法についてはノベルスフィア Developer Program にあるドキュメントを参考にしてください
* [ライセンス](/LICENSE)に同意できたら、copyrighted_assets フォルダ内のファイルをprojectフォルダの中に入れてください
	* scenarioフォルダは中のファイルだけを入れて、projectフォルダ以下に元々あるscenarioフォルダを上書きしないように注意してください
* O2Engineのフォルダ o2sdk-2.2.1 をbill_of_fareフォルダに移動してください
* o2sdk-2.2.2/pluginsフォルダ内 `ns_assist.js` をproject/pluginsフォルダ内に移動してください
* o2sdk-2.2.1/builderフォルダ直下で、コマンドラインで以下のコマンドを実行してください
	* `mono builder.exe -y ../project ../../build` (Mac OSXの場合)
	* Windowsの場合もほぼ同様の手順で出来るはずです。 O2Engineのドキュメントを参考にしてください。
* ブラウザで build/index
* 参考にして自分のゲームを作ってください！

### 自分のプログラムを公開する前に

[Bill of Fareのライセンス](/LICENSE)を良く読んだ上で、公開するようにしてください

### 依存環境のバージョン

O2Engine: 2.2.1

### Issuesについて

このプログラムは、所々イマイチな所が残っています。 なるべくIssueに上げておきますが、あまり積極的な開発の継続は難しいです。
Pull Requestでのパッチ提供は受け付けておりますので、ご興味のある方は是非よろしくお願いします。

また、本プロジェクトはそれ自体が日本語圏のサービスであるノベルスフィアのものをベースとしておりますので、プロジェクトの進行自体を日本語で進めさせて頂きます。予めご了承ください。

## 謝辞

本プログラムがベースとしているO2Engineは、W.Dee氏による吉里吉里およびKAGの仕様に強い影響を受けています。 また、本プログラムにおけるマクロ部はKAICHO氏によるキャラクタレイヤー管理プラグインの仕様を参考に作られています。ゲームエンジンの世界を支えている皆様に感謝申し上げます。

また、本プロジェクトのオープンソース化にあたっては、ノベルスフィア様にご協力いただきました。ありがとうございます。

二次利用不可の範囲ですが、本作中で使用されている背景画像はあやえも研究所様の公開されている技術を参考にしています。 また、取材に快く応じてくださったRanRan様にも、この場を借りて感謝申し上げます。

## 外部リンク

* [ノベルスフィア](http://novelsphere.jp)
* [吉里吉里 ダウンロードページ](http://kikyou.info/tvp/)
* [吉里吉里プラグインとかごった煮的配布場所](http://www.geocities.jp/keep_creating/krkrplugins/)
* [写真を絵のようにする写真加工技術「PhotoDramatica」](http://ayaemo.skr.jp/photodramatica.html)
* [4th cluster](http://4th-cluster.com)