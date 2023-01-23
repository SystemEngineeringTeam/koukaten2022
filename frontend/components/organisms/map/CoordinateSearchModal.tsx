import { FC, useState, ChangeEvent, useCallback } from "react";
import {
  Modal,
  ModalOverlay,
  ModalContent,
  ModalHeader,
  ModalCloseButton,
  ModalBody,
  FormControl,
  Stack,
  FormLabel,
  ModalFooter,
  Select,
} from "@chakra-ui/react";

import { PrimaryButton } from "../../atoms/button/PrimaryButton";
import { useSerchCoordinate } from "../../../hooks/search/coordinate/useSerchCoordinate";

interface Props {
  isOpen: boolean;
  onClose: () => void;
}

export const UserDetailModal: FC<Props> = (props) => {
  const { isOpen, onClose } = props;

  const { getCoordinate, Buildings } = useSerchCoordinate();

  const [departure, setDeparture] = useState("");
  const [destination, setDestination] = useState("");

  const onChangeDeparture = (e: ChangeEvent<HTMLSelectElement>) =>
    setDeparture(e.target.value);
  const onChangeDestination = (e: ChangeEvent<HTMLSelectElement>) =>
    setDestination(e.target.value);

  const onClickGetCoordinate = useCallback(
    () => getCoordinate({ departure, destination }),
    [departure, destination, getCoordinate]
  );

  return (
    <Modal
      isOpen={isOpen}
      onClose={onClose}
      autoFocus={false}
      motionPreset="slideInBottom"
    >
      <ModalOverlay />
      <ModalContent pb={2}>
        <ModalHeader>経路探索</ModalHeader>
        <ModalCloseButton />
        <ModalBody mx={4}>
          <Stack spacing={4}>
            <FormControl>
              <FormLabel>出発地</FormLabel>
              <Select
                value={departure}
                placeholder="出発地を選択"
                onChange={onChangeDeparture}
              >
                {Buildings.map((building, index) => {
                  return <option key={index}>{building}</option>;
                })}
              </Select>
            </FormControl>
            <FormControl>
              <FormLabel>目的地</FormLabel>
              <Select
                value={destination}
                placeholder="目的地を選択"
                onChange={onChangeDestination}
              >
                {Buildings.map((building, index) => {
                  return <option key={index}>{building}</option>;
                })}
              </Select>
            </FormControl>
          </Stack>
        </ModalBody>
        <ModalFooter>
          <PrimaryButton
            disabled={departure === "" || destination === ""}
            onClick={onClickGetCoordinate}
          >
            ナビゲート開始
          </PrimaryButton>
        </ModalFooter>
      </ModalContent>
    </Modal>
  );
};
