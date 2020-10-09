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
  // 魔法
  MAGIC,
  // ドレスアップアイテム
  OUTFIT,
  // 感情表現
  EXPRESSION,
  // ハート
  HEART,
  // 星キャン開放
  LOCK,
}

// 支払いタイプ
enum PayType {
  // 通常キャンドル
  NORMAL_CANDLE,
  // 星キャンドル
  STAR_CANDLE,
  // ハート
  HEART,
}
