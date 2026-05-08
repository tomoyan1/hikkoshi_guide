class TaskTemplate
  REQUIRED_TASKS = [
    # --- 旧居（type: 0） ---
    { id: 1, name: '転出届の手続き（マイナポータル等）', days_offset: -14, type: 0, status_id: 1, category_id: 1 },
    { id: 5, name: '住民税の納付確認・変更相談', days_offset: -14, type: 0, status_id: 1, category_id: 1 },
    { id: 6, name: '印鑑登録の廃止（転出で自動廃止の場合あり）', days_offset: -14, type: 0, status_id: 1, category_id: 1 },
    { id: 101, name: '児童手当の受給事由消滅届', days_offset: -14, type: 0, status_id: 1, category_id: 1 },

    # category_id 2: ライフライン
    { id: 2, name: '電気の解約手続き', days_offset: -14, type: 0, status_id: 1, category_id: 2 },
    { id: 9, name: 'ガスの解約手続き', days_offset: -14, type: 0, status_id: 1, category_id: 2 },
    { id: 10, name: '水道の解約手続き', days_offset: -4, type: 0, status_id: 1, category_id: 2 },

    # category_id 3: 通信・ネット
    { id: 7, name: 'インターネットの移転手続き', days_offset: -30, type: 0, status_id: 1, category_id: 3 },
    { id: 8, name: '固定電話等の移転手続き', days_offset: -21, type: 0, status_id: 1, category_id: 3 },

    # category_id 4: 各種契約・変更
    { id: 12, name: '火災保険・地震保険の契約変更', days_offset: -14, type: 0, status_id: 1, category_id: 4 },

    # category_id 5: 住まい・生活
    { id: 11, name: '郵便物の転送届（郵便局）', days_offset: -7, type: 0, status_id: 1, category_id: 5 },
    { id: 23, name: '現住居の解約連絡', days_offset: -30, type: 0, status_id: 1, category_id: 5 },
    { id: 24, name: '粗大ゴミの処分手配', days_offset: -21, type: 0, status_id: 1, category_id: 5 },
    { id: 25, name: 'NHKの住所変更手続き', days_offset: -14, type: 0, status_id: 1, category_id: 5 },

    # category_id 6: 引越し準備・梱包（新設）
    { id: 601, name: '引越し業者の見積もり・契約', days_offset: -45, type: 0, status_id: 1, category_id: 6 },
    { id: 602, name: '梱包資材の準備（ダンボール等）', days_offset: -14, type: 0, status_id: 1, category_id: 6 },
    { id: 603, name: '荷造り（使用頻度の低いものから）', days_offset: -7, type: 0, status_id: 1, category_id: 6 },

    # --- 新居のタスク（type: 1, 基準日: 入居予定日） ---
    { id: 3, name: '転入届の手続き', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 18, name: 'マイナンバーカードの住所変更（継続利用）', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 102, name: '住民票の写しの取得（免許・銀行用）', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 16, name: '国民健康保険の加入手続き', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 17, name: '国民年金の第1号被保険者の住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 103, name: '児童手当の新規申請（15日以内ルール）', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 15, name: '所得・課税証明書の発行（必要時のみ）', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 22, name: '介護保険の受給資格証の提出', days_offset: 14, type: 1, status_id: 1, category_id: 1 },

    # category_id 2: ライフライン
    { id: 4, name: '電気の開通手続き', days_offset: -14, type: 1, status_id: 1, category_id: 2 },
    { id: 13, name: 'ガスの開栓手続き（立会い必要）', days_offset: -14, type: 1, status_id: 1, category_id: 2 },
    { id: 14, name: '水道の開通手続き', days_offset: -4, type: 1, status_id: 1, category_id: 2 },

    # category_id 3: 通信・ネット
    { id: 19, name: '携帯電話・スマートフォンの住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 3 },
    { id: 303, name: 'インターネット開通工事（立ち会い必要時のみ）', days_offset: 0, type: 1, status_id: 1, category_id: 3 },
    { id: 304, name: 'Wi-Fiルーターの設置・ネットワーク初期設定', days_offset: 0, type: 1, status_id: 1, category_id: 3 },

    # category_id 4: 各種契約・変更
    { id: 26, name: '運転免許証の住所変更（警察署・免許センター）', days_offset: 14, type: 1, status_id: 1, category_id: 4 },
    { id: 20, name: 'クレジットカードの住所変更（Web等）', days_offset: 14, type: 1, status_id: 1, category_id: 4 },
    { id: 21, name: '銀行口座の住所変更（アプリ・窓口）', days_offset: 14, type: 1, status_id: 1, category_id: 4 },
    { id: 401, name: '生命保険・医療保険の住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 4 },
    { id: 27, name: '車庫証明の取得申請（自動車保有時）', days_offset: 15, type: 1, status_id: 1, category_id: 4 },
    { id: 402, name: '自動車・バイクの登録変更（車検証の書き換え）', days_offset: 20, type: 1, status_id: 1, category_id: 4 },
    { id: 403, name: '自動車保険（任意保険）の住所変更', days_offset: 21, type: 1, status_id: 1, category_id: 4 },
    { id: 28, name: 'Amazon・楽天等の配送先・登録住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 4 },
    { id: 404, name: '各種サブスク（Netflix等）の登録住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 4 },

    # category_id 7: 新生活・買い物リスト
    { id: 701, name: 'カーテン・照明器具のサイズ確認と購入', days_offset: -7, type: 1, status_id: 1, category_id: 7 },
    { id: 702, name: '寝具（布団・枕）の準備・配送手配', days_offset: -7, type: 1, status_id: 1, category_id: 7 },
    { id: 703, name: '防虫剤・燻煙剤（入居直前の使用推奨）', days_offset: -1, type: 1, status_id: 1, category_id: 7 },
    { id: 704, name: '当日のサバイバルセット準備（トイレ・洗面・工具）', days_offset: 0, type: 1, status_id: 1, category_id: 7 },
    { id: 705, name: '掃除用具・ゴミ袋（新居用）の購入', days_offset: 0, type: 1, status_id: 1, category_id: 7 },
    { id: 706, name: '家具・家電の買い足し（生活開始後）', days_offset: 7, type: 1, status_id: 1, category_id: 7 },
    { id: 707, name: '収納用品の採寸と購入', days_offset: 3, type: 1, status_id: 1, category_id: 7 }
  ]
end