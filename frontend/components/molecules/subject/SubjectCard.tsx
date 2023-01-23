import { Box, Heading, Stack, Spacer, Button } from "@chakra-ui/react";
import { SubjectTitleWithInfomation } from "../../atoms/subject/SubjectTitleWithInfomation";
import { FC } from "react";

interface Props {
  subjectName: string;
  buildingName: string;
  roomNumber: string;
  folderName: string;
  grade: string;
  classification: string;
}

export const SubjectCard: FC<Props> = (props) => {
  const {
    subjectName,
    buildingName,
    roomNumber,
    folderName,
    grade,
    classification,
  } = props;
  return (
    <>
      <Box w={300}>
        <Heading fontSize="xl">{subjectName}</Heading>
        <Button marginTop={6}>登録</Button>
      </Box>
      <Spacer />
      <Stack>
        <SubjectTitleWithInfomation
          title={"教室"}
          information={buildingName + "-" + roomNumber}
        />
        <SubjectTitleWithInfomation
          title={"開講学部"}
          information={folderName}
        />
        <SubjectTitleWithInfomation title={"学年"} information={grade} />
      </Stack>
      <Spacer />
      <Box marginBottom={0}>{classification}</Box>
    </>
  );
};
