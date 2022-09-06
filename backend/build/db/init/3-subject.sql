/* CREATE TABLE */
CREATE TABLE data_sets.subjects(
    id int not NULL auto_increment,
    folder_name VARCHAR(100),
    subject_code VARCHAR(100),
    subject_name VARCHAR(100),
    grade VARCHAR(100),
    class_code VARCHAR(11),
    class_room VARCHAR(100),
    semester VARCHAR(100),
    day_time VARCHAR(100),
    classification VARCHAR(100),
    credit INT(11),
    primary key (id),
    foreign key (class_room) references data_sets.class_rooms(room_number)
) ENGINE = InnoDB;

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K0103000',
        'キャリア意識形成',
        '2・3',
        11,
        'G3403',
        '前期',
        '月Ⅲ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K0103000',
        'キャリア意識形成',
        '2・3',
        21,
        'G3203',
        '後期',
        '月Ⅲ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K0204000',
        'キャリアデザイン２',
        '3・4',
        11,
        'G3302',
        '後期',
        '月Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K0204000',
        'キャリアデザイン２',
        '3・4',
        21,
        'G3303',
        '後期',
        '月Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K0205000',
        '経済基礎知識',
        '3・4',
        'X1',
        'G2310',
        '前期',
        '木Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K0206000',
        '知的財産権',
        '3・4',
        'X1',
        'K404',
        '後期',
        '水Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K0207000',
        '情報と職業',
        '3・4',
        'X1',
        '12-202',
        '後期',
        '木Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1003000',
        'プログラミング及び演習１',
        '1・2・3・4',
        'X1',
        '1-502',
        '前期',
        '木Ⅰ・木Ⅱ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1005000',
        '情報数学１',
        '1・2・3・4',
        11,
        '1-501',
        '前期',
        '水Ⅱ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1005000',
        '情報数学１',
        '1・2・3・4',
        21,
        '1-502',
        '前期',
        '水Ⅱ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1005000',
        '情報数学１',
        '1・2・3・4',
        'Z1',
        '1-501',
        '前期',
        '水Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1005000',
        '情報数学１',
        '1・2・3・4',
        'Z2',
        '1-502',
        '前期',
        '水Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1007000',
        'コンピュータネットワーク',
        '2・3・4',
        'X1',
        '1-502',
        '前期',
        '水Ⅳ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1011000',
        '基礎数学及び演習',
        '2・3・4',
        '再履１',
        'G2209',
        '前期',
        '月Ⅴ・火Ⅴ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1013000',
        '物理実験',
        '2・3・4',
        'X1',
        'G2606',
        '後期',
        '金Ⅲ・金Ⅳ',
        '必修・選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1015000',
        '組み込みシステム概論',
        '3・4',
        'X1',
        '1-401',
        '前期',
        '月Ⅰ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1015000',
        '組み込みシステム概論',
        '3・4',
        'Z1',
        '1-401',
        '前期',
        '月Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1016000',
        'セミナー',
        '3・4',
        'X1',
        NULL,
        '通年',
        '火Ⅰ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1017000',
        'コンピュータリテラシ',
        '1・2・3・4',
        11,
        '1-502',
        '前期',
        '月Ⅰ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1017000',
        'コンピュータリテラシ',
        '1・2・3・4',
        21,
        '11-101',
        '前期',
        '月Ⅰ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1018000',
        '卒業研究',
        '4',
        'X1',
        NULL,
        '通年',
        '時間外',
        '必修',
        4
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1019000',
        '物理学（力学）',
        '1',
        11,
        'G3303',
        '後期',
        '水Ⅱ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1019000',
        '物理学（力学）',
        '1・2・3・4',
        21,
        'G3403',
        '後期',
        '水Ⅱ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1019000',
        '物理学（力学）',
        '2・3・4',
        '再履１',
        'G2209',
        '前期',
        '木Ⅴ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1019000',
        '物理学（力学）',
        '2・3・4',
        '再履２',
        'G2208',
        '前期',
        '火Ⅴ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1019000',
        '物理学（力学）',
        '1・2・3・4',
        '再履３',
        'G2208',
        '後期',
        '火Ⅴ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1020000',
        'データサイエンス基礎数理',
        '1・2',
        11,
        'G2311',
        '前期',
        '木Ⅲ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1020000',
        'データサイエンス基礎数理',
        '1・2',
        21,
        'G2209',
        '前期',
        '木Ⅲ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1021000',
        '情報社会及び情報倫理',
        '1・2・3・4',
        'X1',
        'G2110',
        '前期',
        '月Ⅲ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K1022000',
        'キャリアデザイン１',
        '1・2・3・4',
        'X1',
        'G2110',
        '前期',
        '月Ⅱ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2012000',
        '言語理論及びコンパイラ',
        '3・4',
        'X1',
        '11-401',
        '前期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2012000',
        '言語理論及びコンパイラ',
        '3・4',
        'Z1',
        '11-401',
        '前期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2014000',
        '計算の理論',
        '3・4',
        'X1',
        '1-502',
        '後期',
        '水Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2014000',
        '計算の理論',
        '3・4',
        'Z1',
        '1-502',
        '後期',
        '水Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2016000',
        '情報数学２',
        '1・2・3・4',
        11,
        'G251',
        '後期',
        '水Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2016000',
        '情報数学２',
        '1・2・3・4',
        21,
        'G2209',
        '後期',
        '水Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2017000',
        'オペレーションズ・リサーチ１',
        '3・4',
        'X1',
        '11-101',
        '前期',
        '水Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2017000',
        'オペレーションズ・リサーチ１',
        '3・4',
        'Z1',
        '11-101',
        '前期',
        '水Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2018000',
        'オペレーションズ・リサーチ２',
        '3・4',
        'X1',
        'K401',
        '後期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2018000',
        'オペレーションズ・リサーチ２',
        '3・4',
        'Z1',
        'K401',
        '後期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2022000',
        'プログラミング及び演習２',
        '1・2・3・4',
        11,
        'K404',
        '後期',
        '木Ⅰ・木Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2022000',
        'プログラミング及び演習２',
        '1・2・3・4',
        21,
        '1-401',
        '後期',
        '木Ⅰ・木Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2035000',
        '論理回路',
        '1・2・3・4',
        'X1',
        'G2210',
        '前期',
        '金Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2035000',
        '論理回路',
        '1・2・3・4',
        'Z9',
        'G2210',
        '前期',
        '金Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2037000',
        'ソフトウェア工学２',
        '3・4',
        'X1',
        '1-502',
        '後期',
        '木Ⅴ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2037000',
        'ソフトウェア工学２',
        '3・4',
        'Z1',
        '1-502',
        '後期',
        '木Ⅴ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2044000',
        '数値計算',
        '2・3・4',
        'X1',
        '1-502',
        '後期',
        '火Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2044000',
        '数値計算',
        '2・3・4',
        'Z1',
        '1-502',
        '後期',
        '火Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2049000',
        '人工知能',
        '2・3・4',
        'X1',
        'G2210',
        '前期',
        '水Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2058000',
        '微分積分１',
        '1',
        11,
        'G2311',
        '前期',
        '木Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2058000',
        '微分積分１',
        '1・2・3・4',
        21,
        'G2209',
        '前期',
        '木Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2059000',
        '微分積分２',
        '1',
        11,
        'G2409',
        '後期',
        '木Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2059000',
        '微分積分２',
        '1・2・3・4',
        21,
        'G2407',
        '後期',
        '木Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2060000',
        '線形代数１',
        '1・2・3・4',
        11,
        'G2209',
        '前期',
        '火Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2060000',
        '線形代数１',
        '1・2・3・4',
        21,
        'G2208',
        '前期',
        '火Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2061000',
        '線形代数２',
        '1・2・3・4',
        11,
        'G152',
        '後期',
        '火Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2061000',
        '線形代数２',
        '1・2・3・4',
        21,
        'G151',
        '後期',
        '火Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2062000',
        '確率統計',
        '2・3・4',
        'X1',
        '1-501',
        '後期',
        '水Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2063000',
        '幾何学',
        '2・3・4',
        'X1',
        '1-501',
        '後期',
        '水Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2063000',
        '幾何学',
        '2・3・4',
        'Z9',
        '1-501',
        '後期',
        '水Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2065000',
        'オブジェクト指向プログラミング及び演習１',
        '2・3・4',
        'X1',
        '1-401',
        '前期',
        '木Ⅲ・木Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2065000',
        'オブジェクト指向プログラミング及び演習１',
        '2・3・4',
        'Z1',
        '1-401',
        '前期',
        '木Ⅲ・木Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2066000',
        'オブジェクト指向プログラミング及び演習２',
        '2・3・4',
        'X1',
        '1-501',
        '後期',
        '木Ⅲ・木Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2066000',
        'オブジェクト指向プログラミング及び演習２',
        '2・3・4',
        'Z1',
        '1-501',
        '後期',
        '木Ⅲ・木Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2068000',
        'コンピュータアーキテクチャ１',
        '2・3・4',
        'X1',
        '11-401',
        '前期',
        '火Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2068000',
        'コンピュータアーキテクチャ１',
        '2・3・4',
        'Z1',
        '11-401',
        '前期',
        '火Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2069000',
        'コンピュータアーキテクチャ２',
        '2・3・4',
        'X1',
        '11-401',
        '後期',
        '火Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2069000',
        'コンピュータアーキテクチャ２',
        '2・3・4',
        'Z1',
        '11-401',
        '後期',
        '火Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2070000',
        'モバイルネットワーク',
        '2・3・4',
        'X1',
        'G2210',
        '後期',
        '金Ⅴ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2071000',
        '情報システム概論',
        '2・3・4',
        'X1',
        'G2210',
        '後期',
        '水Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2072000',
        '並列分散処理',
        '3・4',
        'X1',
        '11-101',
        '後期',
        '月Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2072000',
        '並列分散処理',
        '3・4',
        'Z1',
        '11-101',
        '後期',
        '月Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2076000',
        'ＣＡＤ及び演習１',
        '3・4',
        'X1',
        '情教実習室A',
        '後期',
        '金Ⅰ・金Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2077000',
        'ソフトコンピューティング',
        '3・4',
        'X1',
        '11-101',
        '後期',
        '火Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2077000',
        'ソフトコンピューティング',
        '3・4',
        'Z1',
        '11-101',
        '後期',
        '火Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2082000',
        '数理論理学',
        '2・3・4',
        'X1',
        '11-401',
        '後期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2083000',
        'Ｗｅｂプログラミング基礎',
        '1・2・3・4',
        11,
        '11-201',
        '後期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2083000',
        'Ｗｅｂプログラミング基礎',
        '1・2・3・4',
        21,
        '11-301',
        '後期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2084000',
        'プロジェクト演習１',
        '2・3・4',
        'X1',
        '11-201',
        '前期',
        '火Ⅳ',
        '選択',
        1
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2085000',
        'プロジェクト演習２',
        '2・3・4',
        'X1',
        '11-201',
        '後期',
        '火Ⅳ',
        '選択',
        1
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2087000',
        '物理学（電磁気学）',
        '2・3・4',
        11,
        'G3301',
        '前期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2087000',
        '物理学（電磁気学）',
        '2・3・4',
        21,
        '1-501',
        '前期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2088000',
        'アルゴリズムとデータ構造',
        '3・4',
        'X1',
        '1-501',
        '前期',
        '火Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2089000',
        'アルゴリズムとデータ構造演習',
        '3・4',
        'X1',
        '1-501',
        '前期',
        '火Ⅲ',
        '選択',
        1
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2090000',
        'オペレーティングシステム',
        '2・3・4',
        'X1',
        'G2210',
        '後期',
        '木Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2091000',
        '情報セキュリティ',
        '3・4',
        'X1',
        'G2210',
        '前期',
        '水Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2094000',
        'コンピュータ概論',
        '1・2・3・4',
        'X1',
        '1-502',
        '前期',
        '水Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2095000',
        'ソフトウェア工学１',
        '3・4',
        'X1',
        '1-303',
        '前期',
        '木Ⅴ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2095000',
        'ソフトウェア工学１',
        '3・4',
        'Z1',
        '1-303',
        '前期',
        '木Ⅴ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2096000',
        'ＣＧプログラミング及び演習',
        '3・4',
        11,
        '1-601',
        '後期',
        '火Ⅲ・火Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2096000',
        'ＣＧプログラミング及び演習',
        '3・4',
        21,
        '1-601',
        '前期',
        '火Ⅳ・火Ⅴ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2097000',
        '画像処理及び演習',
        '2・3・4',
        'X1',
        '1-303',
        '前期',
        '水Ⅰ・水Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K2117000',
        'インターンシップ',
        '1・2・3・4',
        'X1',
        NULL,
        '後期',
        '集中',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K3001000',
        'ネットワーク及び演習',
        '3・4',
        'X1',
        '11-101',
        '前期',
        '木Ⅰ・木Ⅱ',
        '選必',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K3002000',
        'Ｗｅｂプログラミング及び演習',
        '3・4',
        'X1',
        '11-101',
        '後期',
        '木Ⅰ・木Ⅱ',
        '選必',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K3003000',
        '組み込みプログラミング及び演習',
        '3・4',
        'X1',
        'ﾏｲｺﾝ室1',
        '後期',
        '木Ⅰ・木Ⅱ',
        '選必',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K3003000',
        '組み込みプログラミング及び演習',
        '3・4',
        'Z1',
        'ﾏｲｺﾝ室1',
        '後期',
        '木Ⅰ・木Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K3004000',
        'マイコン制御及び演習',
        '3・4',
        'X1',
        'ﾏｲｺﾝ室1',
        '前期',
        '木Ⅰ・木Ⅱ',
        '選必',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K3004000',
        'マイコン制御及び演習',
        '3・4',
        'Z1',
        'ﾏｲｺﾝ室1',
        '前期',
        '木Ⅰ・木Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'K3005000',
        'データベース及び演習',
        '3・4',
        'X1',
        '1-501',
        '前期',
        '月Ⅲ・月Ⅳ',
        '選必',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X0104000',
        'キャリア意識形成',
        '2・3',
        11,
        'G3203',
        '後期',
        '月Ⅳ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X0104000',
        'キャリア意識形成',
        '2・3',
        21,
        'G3301',
        '後期',
        '月Ⅳ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X0202000',
        'キャリアデザイン２',
        '3・4',
        11,
        'G2407',
        '前期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X0202000',
        'キャリアデザイン２',
        '3・4',
        21,
        'G2408',
        '前期',
        '月Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X0203000',
        '経済基礎知識',
        '3・4',
        'X1',
        'G2210',
        '前期',
        '木Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X0204000',
        '知的財産権',
        '3・4',
        'X1',
        'K404',
        '後期',
        '水Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X0205000',
        '情報と職業',
        '3・4',
        'X1',
        '12-202',
        '後期',
        '木Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1001000',
        'コンピュータリテラシ',
        '1・2・3・4',
        11,
        '1-303',
        '前期',
        '金Ⅳ・金Ⅴ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1001000',
        'コンピュータリテラシ',
        '1・2・3・4',
        21,
        '1-502',
        '前期',
        '金Ⅳ・金Ⅴ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1003000',
        'プログラミング及び演習１',
        '1・2・3・4',
        'X1',
        '1-501',
        '前期',
        '水Ⅲ・水Ⅳ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1004000',
        'Ｗｅｂプログラミング及び演習',
        '2・3・4',
        11,
        '1-601',
        '後期',
        '火Ⅰ・火Ⅱ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1004000',
        'Ｗｅｂプログラミング及び演習',
        '2・3・4',
        21,
        '1-701',
        '後期',
        '火Ⅰ・火Ⅱ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1005000',
        'デッサンとモデリング',
        '1・2・3・4',
        11,
        '1-602',
        '後期',
        '金Ⅰ・金Ⅱ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1005000',
        'デッサンとモデリング',
        '1・2・3・4',
        21,
        '1-602',
        '後期',
        '金Ⅲ・金Ⅳ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1006000',
        'Ｗｅｂデザイン及び演習',
        '2・3・4',
        11,
        '1-601',
        '前期',
        '月Ⅰ・月Ⅱ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1006000',
        'Ｗｅｂデザイン及び演習',
        '2・3・4',
        21,
        '1-701',
        '前期',
        '月Ⅰ・月Ⅱ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1011000',
        'セミナー',
        '3・4',
        'X1',
        NULL,
        '通年',
        '火Ⅰ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1012000',
        'ＣＧコンテンツ基礎１',
        '1・2・3・4',
        11,
        '1-701',
        '後期',
        '水Ⅲ・水Ⅳ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1012000',
        'ＣＧコンテンツ基礎１',
        '1・2・3・4',
        21,
        '1-701',
        '後期',
        '金Ⅰ・金Ⅱ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1013000',
        '画像処理及び演習',
        '2・3・4',
        'X1',
        '1-303',
        '前期',
        '火Ⅲ・火Ⅳ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1014000',
        'ＣＧプログラミング及び演習',
        '2・3・4',
        'X1',
        '1-502',
        '後期',
        '木Ⅰ・木Ⅱ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1015000',
        '基礎数学及び演習',
        '3・4',
        '再履１',
        'G2209',
        '前期',
        '月Ⅴ・火Ⅴ',
        '必修',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1016000',
        'データサイエンス基礎数理',
        '1・2',
        11,
        'G2310',
        '前期',
        '水Ⅱ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1016000',
        'データサイエンス基礎数理',
        '1・2',
        21,
        'G3201',
        '前期',
        '水Ⅱ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1017000',
        '情報社会及び情報倫理',
        '1・2・3・4',
        'X1',
        'G2110',
        '前期',
        '月Ⅲ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X1018000',
        'キャリアデザイン１',
        '1・2・3・4',
        'X1',
        'G2110',
        '前期',
        '月Ⅱ',
        '必修',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2002000',
        '微分積分１',
        '1',
        11,
        'G2310',
        '前期',
        '水Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2002000',
        '微分積分１',
        '1・2・3・4',
        21,
        'G3201',
        '前期',
        '水Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2003000',
        '線形代数１',
        '1・2・3・4',
        'X1',
        'G151',
        '前期',
        '火Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2004000',
        '確率統計',
        '1・2・3・4',
        'X1',
        'G151',
        '後期',
        '月Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2011000',
        'プログラミング及び演習２',
        '1・2・3・4',
        'X1',
        '1-303',
        '後期',
        '木Ⅲ・木Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2019000',
        'コミュニケーション論',
        '1・2・3・4',
        'X1',
        '1-501',
        '後期',
        '木Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2019000',
        'コミュニケーション論',
        '1・2・3・4',
        'Z1',
        '1-501',
        '後期',
        '木Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2020000',
        'カラーデザイン',
        '2・3・4',
        11,
        '12-303',
        '前期',
        '水Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2020000',
        'カラーデザイン',
        '2・3・4',
        21,
        '12-303',
        '前期',
        '水Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2020000',
        'カラーデザイン',
        '2・3・4',
        'Z1',
        '12-303',
        '前期',
        '水Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2020000',
        'カラーデザイン',
        '2・3・4',
        'Z2',
        '12-303',
        '前期',
        '水Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2021000',
        'ユーザインタフェース',
        '2・3・4',
        'X1',
        '11-401',
        '前期',
        '火Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2021000',
        'ユーザインタフェース',
        '2・3・4',
        'Z1',
        '11-401',
        '前期',
        '火Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2022000',
        'ユーザビリティ',
        '2・3・4',
        'X1',
        '1-502',
        '後期',
        '火Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2022000',
        'ユーザビリティ',
        '2・3・4',
        'Z1',
        '1-502',
        '後期',
        '火Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2023000',
        'ゲームプログラミング',
        '3・4',
        'X1',
        '1-502',
        '前期',
        '火Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2023000',
        'ゲームプログラミング',
        '3・4',
        'Z1',
        '1-502',
        '前期',
        '火Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2024000',
        'メディア文化論',
        '2・3・4',
        'X1',
        'G2110',
        '後期',
        '金Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2024000',
        'メディア文化論',
        '2・3・4',
        'Z1',
        'G2110',
        '後期',
        '金Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2025000',
        'メディア産業論',
        '2・3・4',
        'X1',
        '1-502',
        '前期',
        '木Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2025000',
        'メディア産業論',
        '2・3・4',
        'Z1',
        '1-502',
        '前期',
        '木Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2026000',
        'ＣＡＤ及び演習１',
        '3・4',
        'X1',
        '情教実習室A',
        '前期',
        '金Ⅲ・金Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2027000',
        'ＣＡＤ及び演習２',
        '3・4',
        'X1',
        '情教実習室A',
        '後期',
        '金Ⅲ・金Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2028000',
        'ネットワーク及び演習',
        '3・4',
        'X1',
        '12-202',
        '後期',
        '金Ⅰ・金Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2030000',
        'モバイルネットワーク',
        '2・3・4',
        'X1',
        'G2210',
        '後期',
        '金Ⅴ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2031000',
        '情報システム概論',
        '2・3・4',
        'X1',
        'G2210',
        '後期',
        '水Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2032000',
        '人工知能',
        '3・4',
        'X1',
        'G2210',
        '前期',
        '水Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2033000',
        '経営学概論',
        '3・4',
        'X1',
        '11-101',
        '前期',
        '金Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2033000',
        '経営学概論',
        '3・4',
        'Z1',
        '11-101',
        '前期',
        '金Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2034000',
        'インターネットビジネス論',
        '3・4',
        'X1',
        '11-401',
        '後期',
        '木Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2034000',
        'インターネットビジネス論',
        '3・4',
        'Z1',
        '11-401',
        '後期',
        '木Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2035000',
        'ベンチャービジネス論',
        '3・4',
        'X1',
        '1-501',
        '前期',
        '水Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2035000',
        'ベンチャービジネス論',
        '3・4',
        'Z1',
        '1-501',
        '前期',
        '水Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2042000',
        'ＣＧコンテンツ基礎２',
        '2・3・4',
        11,
        '1-701',
        '前期',
        '木Ⅰ・木Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2042000',
        'ＣＧコンテンツ基礎２',
        '2・3・4',
        21,
        '1-701',
        '前期',
        '水Ⅲ・水Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2043000',
        'ＣＧコンテンツ応用',
        '2・3・4',
        'X1',
        '1-701',
        '後期',
        '水Ⅰ・水Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2044000',
        '映像制作概論',
        '2・3・4',
        'X1',
        '1-301',
        '後期',
        '木Ⅳ・木Ⅴ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2044000',
        '映像制作概論',
        '2・3・4',
        'Z1',
        '1-301',
        '後期',
        '木Ⅳ・木Ⅴ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2045000',
        'マルチメディア情報処理及び演習２',
        '3',
        'X1',
        '1-601',
        '前期',
        '木Ⅰ・木Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2046000',
        '応用プログラミング及び演習',
        '3・4',
        'X1',
        'K404',
        '後期',
        '月Ⅰ・月Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2046000',
        '応用プログラミング及び演習',
        '3・4',
        'Z1',
        'K404',
        '後期',
        '月Ⅰ・月Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2048000',
        'アルゴリズムとデータ構造',
        '2・3・4',
        'X1',
        '1-303',
        '後期',
        '火Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2049000',
        'オペレーティングシステム',
        '3・4',
        'X1',
        'G2210',
        '後期',
        '木Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2050000',
        '情報セキュリティ',
        '3・4',
        'X1',
        'G2210',
        '前期',
        '水Ⅳ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2052000',
        'ディジタル映像処理及び演習',
        '3・4',
        'X1',
        '1-502',
        '前期',
        '火Ⅲ・火Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2052000',
        'ディジタル映像処理及び演習',
        '3・4',
        'Z1',
        '1-502',
        '前期',
        '火Ⅲ・火Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2054000',
        'マルチメディア情報処理及び演習１',
        '1・2・3・4',
        11,
        '1-701',
        '前期',
        '木Ⅲ・木Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2054000',
        'マルチメディア情報処理及び演習１',
        '1・2・3・4',
        21,
        '1-701',
        '前期',
        '金Ⅰ・金Ⅱ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2055000',
        'コンピュータネットワーク',
        '2・3・4',
        'X1',
        '1-502',
        '前期',
        '金Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2055000',
        'コンピュータネットワーク',
        '2・3・4',
        'Z9',
        '1-502',
        '前期',
        '金Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2056000',
        'コンピュータ概論',
        '1・2・3・4',
        'X1',
        '1-501',
        '前期',
        '月Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2057000',
        'メディア英語',
        '2・3・4',
        11,
        'G3503',
        '後期',
        '月Ⅰ',
        '選択',
        1
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2057000',
        'メディア英語',
        '2・3・4',
        21,
        'G3503',
        '後期',
        '月Ⅱ',
        '選択',
        1
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2057000',
        'メディア英語',
        '2・3・4',
        'Z1',
        'G3503',
        '後期',
        '月Ⅰ',
        '選択',
        1
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2057000',
        'メディア英語',
        '2・3・4',
        'Z2',
        'G3503',
        '後期',
        '月Ⅱ',
        '選択',
        1
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2058000',
        '物理学（力学）',
        '1・2・3・4',
        'X1',
        'G2311',
        '後期',
        '火Ⅰ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2059000',
        '映像制作及び演習',
        '3・4',
        'X1',
        '1-501',
        '後期',
        '水Ⅲ・水Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2059000',
        '映像制作及び演習',
        '3・4',
        'Z1',
        '1-501',
        '後期',
        '水Ⅲ・水Ⅳ',
        '選択',
        3
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2060000',
        'データベース',
        '3・4',
        'X1',
        '1-501',
        '後期',
        '火Ⅱ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2061000',
        'サウンドメディア論',
        '2・3・4',
        'X1',
        '1-502',
        '後期',
        '水Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2061000',
        'サウンドメディア論',
        '2・3・4',
        'Z1',
        '1-502',
        '後期',
        '水Ⅲ',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X2070000',
        'インターンシップ',
        '1・2・3・4',
        'X1',
        NULL,
        '後期',
        '集中',
        '選択',
        2
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X3003000',
        '卒業研究',
        '4',
        'X1',
        NULL,
        '通年',
        '時間外',
        '選必',
        4
    );

/* INSERT QUERY */
INSERT INTO
    data_sets.subjects(
        folder_name,
        subject_code,
        subject_name,
        grade,
        class_code,
        class_room,
        semester,
        day_time,
        classification,
        credit
    )
VALUES
    (
        '情報科学部',
        'X3004000',
        '卒業制作',
        '4',
        'X1',
        NULL,
        '通年',
        '時間外',
        '選必',
        4
    );