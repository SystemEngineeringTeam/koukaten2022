import { Flex, Stack } from "@chakra-ui/react";
import { SubjectCard } from "../../molecules/subject/SubjectCard";
import { FC } from "react";

interface Props {
  subjectReults: Array<SubjectDetail>;
}

export const SubjectsList: FC<Props> = (props) => {
  const { subjectReults } = props;

  return (
    <>
      <Stack spacing={0}>
        {subjectReults?.map((data) => {
          return (
            <Flex p={4} shadow="md" borderWidth="1px" key={data.id}>
              <SubjectCard
                subjectName={data.subjectName}
                buildingName={data.buildingName}
                roomNumber={data.roomNumber}
                folderName={data.folderName}
                grade={data.grade}
                classification={data.classification}
              />
            </Flex>
          );
        })}
      </Stack>
    </>
  );
};
