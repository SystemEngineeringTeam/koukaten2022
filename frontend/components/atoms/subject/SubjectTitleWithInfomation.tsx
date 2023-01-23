import { FC } from "react";
import { Flex, Box } from "@chakra-ui/react";

interface Props {
  title: string;
  information: string;
}

export const SubjectTitleWithInfomation: FC<Props> = (props) => {
  const { title, information } = props;
  return (
    <Flex>
      <Box color="gray.500">{title}:</Box>
      <Box>{information}</Box>
    </Flex>
  );
};
