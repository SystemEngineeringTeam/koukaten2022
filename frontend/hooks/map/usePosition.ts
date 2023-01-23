import { useCallback, useState } from "react";
import { useMessage } from "../useMessage";

export const usePosition = () => {
  const [position, setPosition] = useState({ latitude: 0, longitude: 0 });

  const { showMessage } = useMessage();

  const getPosition = useCallback(() => {
    navigator.geolocation.watchPosition(
      (position) => {
        const { latitude, longitude } = position.coords;
        setPosition({ latitude, longitude });
      },
      (error) => {
        // 取得失敗した場合
        switch (error.code) {
          case 1: //PERMISSION_DENIED
            showMessage({
              title: "位置情報の利用が許可されていません",
              status: "error",
            });
            break;
          case 2: //POSITION_UNAVAILABLE
            showMessage({
              title: "現在位置が取得できませんでした",
              status: "error",
            });
            break;
          case 3: //TIMEOUT
            showMessage({ title: "タイムアウトになりました", status: "error" });
            break;
          default:
            showMessage({
              title: "その他のエラー(エラーコード:" + error.code + ")",
              status: "error",
            });

            break;
        }
      }
    );
  }, [showMessage]);
  return { position, getPosition };
};
