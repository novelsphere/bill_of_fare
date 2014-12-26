/*
 * 
 * char_layers.js
 * 
 * キャラクターレイヤのためのJS
 * Created by Satoshi SUZUKI 2014/02/08
 *
 */

var o2.charLayers = {};

function CharLayer(name, layer){
  this.layer = layer;
  o2.charLayers[name] = this;
}
CharLayer.prototype = {
  
  
  
}

/*
クラスの書き方の参考に以下。
function Controller(conf){
  this.show_text = conf.text || '';
  this.$display_field = conf.$display_field;
  
  this.items_pool = [];
  this.setup(conf);
}
Controller.prototype = {
  setup:function(conf){
    this.setItemsPool(conf);
  },
  setItemsPool: function(conf){
    for(var i=0; i<conf.$goods.length; i++){
         var item = new Item(conf.$goods.eq(i), this.$display_field);
         this.items_pool.push(item);
    }
  }
}

var controller = new Controller(conf);
*/