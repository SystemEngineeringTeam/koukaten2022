import { useRouter } from "next/router";

export const useSerchCoordinate = () => {
  const router = useRouter();

  const getCoordinate = (props: CoordinateQuery) => {
    const {departure, destination} = props

    router.push({
      pathname: "/map",
      query: {
        placeOfDeparture: departure,
        placeOfDestination: destination,
      },
    });
  };

  const Buildings: Array<string> = [
    "1号館",
    "1号館別館",
    "10号館",
    "2号館実験棟",
    "新2号館",
    "3号館",
    "3号館別館",
    "バイオ実験棟",
    "4号館",
    "4号館別館",
    "5号館",
    "6号館",
    "7号館",
    "8号館",
    "9号館",
    "10号館",
    "10号館大講義室",
    "11号館",
    "12号館",
    "13号館",
    "情報教育センター",
    "計算センター",
    "バイオ環境化学実験棟",
    "図書館",
    "総合研究室",
    "耐震実験センター",
    "振動実験棟",
    "(愛知工業大学)地域防災研究センター",
    "エコ電力研究センター",
    "本部棟",
    "旧本部棟(第1本部棟)",
    "第2本部棟",
    "愛和会館",
    "AITプラザ",
    "セントラルテラス",
    "鉀徳館",
    "総合運動場管理棟",
    "小体育館(アーチェリー場)",
    "第3クラブハウス",
    "第4クラブハウス",
    "第5クラブハウス",
    "庭球場管理ハウス",
    "弓道場",
    "警備室",
    "バス停",
    "総合運動場管理棟",
    "小体育館(アーチェリー場)",
    "第3クラブハウス",
    "第4クラブハウス",
    "第5クラブハウス",
    "庭球場管理ハウス",
    "弓道場",
    "警備室",
    "バス停",
    "合宿寮",
    "愛知工業大学学生寮",
    "サッカー場",
    "球技場",
    "野球場",
    "陸上競技場",
  ];

  return {
    getCoordinate,
    Buildings,
  };
};
