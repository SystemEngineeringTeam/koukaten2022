/* CREATE DATABASE */
CREATE DATABASE data_sets;

USE data_sets
/* CREATE TABLE */
CREATE TABLE IF NOT EXISTS buildings(
    building_name VARCHAR(100),
    latitude DECIMAL(10, 2),
    longitude DECIMAL(10, 2),
    primary key (building_name)
) ENGINE = InnoDB;

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('1号館', 35.1840182, 137.1112837);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('1号館別館', 35.1845560, 137.1116249);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('旧1号館', 35.18523286, 137.1152695);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('2号館実験棟', 35.1842372, 137.1129512);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('新2号館', 35.18374881, 137.1142044);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('3号館', 35.18399654, 137.1150169);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('3号館別館', 35.18384527, 137.1150466);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('バイオ実験棟', 35.1837591, 137.1154783);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('4号館', 35.18491293, 137.1149843);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('4号館別館', 35.18523286, 137.1152695);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('5号館', 35.18465123, 137.1140756);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('6号館', 35.18467734, 137.1160329);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('7号館', 35.18480323, 137.1126859);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('8号館', 35.18437822, 137.1143341);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('9号館', 35.18486722, 137.1116681);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('10号館', 35.18430792, 137.1109747);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('10号館大講義室', 35.18446846, 137.1115045);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('11号館', 35.1853197, 137.1158847);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('12号館', 35.18382971, 137.1134968);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('13号館', 35.18483879, 137.1158383);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('情報教育センター', 35.1847046, 137.1147838);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('計算センター', 35.1847046, 137.1145263);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('バイオ環境化学実験棟', 35.1838202, 137.115439);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('図書館', 35.18375355, 137.1129209);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('総合研究室', 35.18335051, 137.114681);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('耐震実験センター', 35.18521689, 137.111138);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('振動実験棟', 35.18507427, 137.1130726);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    (
        '(愛知工業大学)地域防災研究センター',
        35.18481385,
        137.1105387
    );

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('エコ電力研究センター', NULL, NULL);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('本部棟', 35.18323824, 137.1120411);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('旧本部棟(第1本部棟)', 35.18372053, 137.1118533);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('第2本部棟', 35.18365476, 137.1123576);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('愛和会館', 35.18436064, 137.1123629);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('AITプラザ', 35.1843738, 137.111789);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('セントラルテラス', 35.18429926, 137.1139508);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('鉀徳館', 35.18235593, 137.1137703);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('総合運動場管理棟', 35.18359303, 137.1174832);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('小体育館(アーチェリー場)', 35.18158624, 137.1132799);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('第3クラブハウス', 35.18525379, 137.1114555);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('第4クラブハウス', 35.18268333, 137.1146579);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('第5クラブハウス', 35.18168223, 137.1179497);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('庭球場管理ハウス', 35.18340286, 137.1126484);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('弓道場', 35.18392049, 137.1192539);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('警備室', 35.18299418, 137.1103032);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('バス停', NULL, NULL);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('合宿寮', 35.18234836, 137.111643);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('愛知工業大学学生寮', 35.18210019, 137.1115963);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('サッカー場', 35.18358403, 137.1164672);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('球技場', 35.18239618, 137.1172208);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('野球場', 35.1827147, 137.1187408);

/* INSERT QUERY */
INSERT INTO
    buildings(building_name, latitude, longitude)
VALUES
    ('陸上競技場', 35.18438376, 137.117782);