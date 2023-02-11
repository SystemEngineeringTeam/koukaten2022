import { useRouter } from "next/router";

export const useSearchSubject = () => {
  const router = useRouter();

  const getSubject = (props: SubjectQuery) => {
    const { buildingName, className, subjectName } = props;

    router.push({
      pathname: "/subject",
      query: {
        buildingName: buildingName,
        className: className,
        subjectName: subjectName,
      },
    });
  };
  return {
    getSubject,
  };
};
