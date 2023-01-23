import { SubjectsList } from "../components/organisms/subject/SubjectList";
import { GetServerSideProps } from "next";
import { DefaultLayput } from '../components/templates/DefaultLayput';



export default function Subject(props: {
  subjectDatas: Array<SubjectDetailProps>;
}) {
  const { subjectDatas } = props;

  return (
    <DefaultLayput>
      <SubjectsList subjectDatas={subjectDatas} />
    </DefaultLayput>
  );
}

export const getServerSideProps: GetServerSideProps = async (context) => {
  const bn = context.query.buildingName;
  const rn = context.query.className;
  const sn = context.query.subjectName;

  const response = await fetch(
    `http://localhost:8080/search?bn=${bn}&rn=${rn}&sn=${sn}`
  );
  const subjectDatas = await response.json();

  return {
    props: { subjectDatas },
  };
};
