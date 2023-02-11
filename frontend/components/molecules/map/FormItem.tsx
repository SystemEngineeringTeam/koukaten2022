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
  title: string,
  buildings: Array<string>
}

export const UserDetailModal: FC<Props> = (props) => {
  const { title, buildings } = props;

 

  return (
    <>
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
        <FormLabel>出発地</FormLabel>
        <Select
          value={departure}
          placeholder="目的地を選択"
          onChange={onChangeDestination}
        >
          {Buildings.map((building, index) => {
            return <option key={index}>{building}</option>;
          })}
        </Select>
      </FormControl>
    </>
  );
};
