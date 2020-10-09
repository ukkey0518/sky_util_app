// ステージ
enum Stage {
  // 孤島 (Stage1)
  ISLE_OF_DAWN,
  // 草原 (Stage2)
  DAYLIGHT_PRAIRIE,
  // 雨林 (Stage3)
  HIDDEN_FOREST,
  // 峡谷 (Stage4)
  VALLEY_OF_TRIUMPH,
  // 捨てられた地 (Stage5)
  GOLDEN_WASTELAND,
  // 書庫 (Stage6)
  VAULT_OF_KNOWLEDGE,
  // 暴風域 (Stage7)
  STORM,
}

// アイテム種別
enum ItemType {
  // 魔法(小)
  MAGIC_SMALL,
  // 魔法(大)
  MAGIC_BIG,

  // 衣装(パンツ)
  OUTFIT_PANTS,
  // 衣装(顔)
  OUTFIT_MASK,
  // 衣装(ヘアスタイル)
  OUTFIT_HAIR,
  // 衣装(ケープ)
  OUTFIT_CAPE,
  // 衣装(アイテム)
  OUTFIT_ITEM,

  // 感情表現(レベル1)
  EXPRESSION_1,
  // 感情表現(レベル2)
  EXPRESSION_2,
  // 感情表現(レベル3)
  EXPRESSION_3,
  // 感情表現(レベル4)
  EXPRESSION_4,
  // 感情表現(レベル5)
  EXPRESSION_5,
  // 感情表現(レベル6)
  EXPRESSION_6,

  // 鳴き声
  CALL,

  // 楽譜
  SCORE,

  // ハート
  HEART,

  // ツリー開放
  TREE_UNLOCK,
}

// 支払いタイプ
enum PayType {
  // 無料
  FREE,
  // 通常キャンドル
  NORMAL_CANDLE,
  // 星キャンドル
  STAR_CANDLE,
  // ハート
  HEART,
}
