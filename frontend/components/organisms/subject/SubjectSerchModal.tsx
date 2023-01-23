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
  Input,
} from "@chakra-ui/react";

import { PrimaryButton } from "../../atoms/button/PrimaryButton";
import { useSearchSubject } from "../../../hooks/search/subject/useSearchSubject";

interface Props {
  isOpen: boolean;
  onClose: () => void;
}

export const UserDetailModal: FC<Props> = (props) => {
  const { isOpen, onClose } = props;

  const { getSubject } = useSearchSubject();

  const [buildingName, setBuildingName] = useState("");
  const [className, setClassName] = useState("");
  const [subjectName, setSubjectName] = useState("");

  const onChangeBuildingName = (e: ChangeEvent<HTMLInputElement>) =>
    setBuildingName(e.target.value);
  const onChangeClassName = (e: ChangeEvent<HTMLInputElement>) =>
    setClassName(e.target.value);
  const onChangeSubjectName = (e: ChangeEvent<HTMLInputElement>) =>
    setSubjectName(e.target.value);

  const onClickGetSubject = useCallback(
    () => getSubject({ buildingName, className, subjectName }),
    [buildingName, className, subjectName, getSubject]
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
              <FormLabel htmlFor="name">建物名</FormLabel>
              <Input
                id="name"
                placeholder="例: 1号館"
                value={buildingName}
                onChange={onChangeBuildingName}
              />
            </FormControl>
            <FormControl>
              <FormLabel htmlFor="name">教室名</FormLabel>
              <Input
                id="name"
                placeholder="例: G2210"
                value={className}
                onChange={onChangeClassName}
              />
            </FormControl>
            <FormControl>
              <FormLabel htmlFor="name">科目名</FormLabel>
              <Input
                id="name"
                placeholder="例: 情報数学"
                value={subjectName}
                onChange={onChangeSubjectName}
              />
            </FormControl>
          </Stack>
        </ModalBody>
        <ModalFooter>
          <PrimaryButton
            disabled={
              buildingName === "" && className === "" && subjectName === ""
            }
            onClick={onClickGetSubject}
          >
            検索
          </PrimaryButton>
        </ModalFooter>
      </ModalContent>
    </Modal>
  );
};
