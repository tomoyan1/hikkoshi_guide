class TaskTemplate
  REQUIRED_TASKS = [
    # --- 旧居のタスク（type: 0, 基準日: 退去予定日） ---
    # category_id 1: 役所・公的手続き
    { id: 1, name: '転出届の手続き', days_offset: -14, type: 0, status_id: 1, category_id: 1 },
    { id: 5, name: '住民税の住所変更', days_offset: -14, type: 0, status_id: 1, category_id: 1 },
    { id: 6, name: '印鑑登録の住所変更', days_offset: -14, type: 0, status_id: 1, category_id: 1 },
    
    # category_id 2: ライフライン
    { id: 2, name: '電気の解約手続き', days_offset: -14, type: 0, status_id: 1, category_id: 2 },
    { id: 9, name: 'ガスの解約手続き', days_offset: -14, type: 0, status_id: 1, category_id: 2 },
    { id: 10, name: '水道の解約手続き', days_offset: -4, type: 0, status_id: 1, category_id: 2 },

    # category_id 3: 通信・ネット
    { id: 7, name: 'インターネットの移転手続き', days_offset: -30, type: 0, status_id: 1, category_id: 3 },
    { id: 8, name: '固定電話の移転手続き', days_offset: -21, type: 0, status_id: 1, category_id: 3 },

    # category_id 4: 各種契約・変更
    { id: 12, name: '火災保険・地震保険の契約変更', days_offset: -14, type: 0, status_id: 1, category_id: 4 },

    # category_id 5: 住まい・生活
    { id: 11, name: '郵便物の転送届（郵便局）', days_offset: -7, type: 0, status_id: 1, category_id: 5 },
    { id: 23, name: '現住居の解約連絡', days_offset: -30, type: 0, status_id: 1, category_id: 5 }, # 追加
    { id: 24, name: '粗大ゴミの処分手配', days_offset: -21, type: 0, status_id: 1, category_id: 5 }, # 追加
    { id: 25, name: 'NHKの住所変更手続き', days_offset: -14, type: 0, status_id: 1, category_id: 5 }, # 追加

    # --- 新居のタスク（type: 1, 基準日: 入居予定日） ---
    # category_id 1: 役所・公的手続き
    { id: 3, name: '転入届の手続き', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 15, name: '収入証明書の発行', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 16, name: '国民健康保険の手続き', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 17, name: '国民年金の住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 18, name: 'マイナンバーカードの住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 1 },
    { id: 22, name: '介護保険の住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 1 },

    # category_id 2: ライフライン
    { id: 4, name: '電気の開通手続き', days_offset: -14, type: 1, status_id: 1, category_id: 2 },
    { id: 13, name: 'ガスの開栓手続き（立会い必要）', days_offset: -14, type: 1, status_id: 1, category_id: 2 },
    { id: 14, name: '水道の開通手続き', days_offset: -4, type: 1, status_id: 1, category_id: 2 },

    # category_id 3: 通信・ネット
    { id: 19, name: '携帯電話・スマートフォンの住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 3 },

    # category_id 4: 各種契約・変更
    { id: 20, name: 'クレジットカードの住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 4 },
    { id: 21, name: '銀行口座の住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 4 },
    { id: 26, name: '運転免許証の住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 4 }, # 追加
    { id: 27, name: '車庫証明の取得（自動車保有時）', days_offset: 15, type: 1, status_id: 1, category_id: 4 }, # 追加
    { id: 28, name: '通販サイト・各種サブスクの住所変更', days_offset: 14, type: 1, status_id: 1, category_id: 4 } # 追加
  ]
end