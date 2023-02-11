import dynamic from "next/dynamic";
import { GetServerSideProps } from "next";

import { DefaultLayput } from "../components/templates/DefaultLayput";
import { Coordinate } from '../types/map';

interface Props {
  coordinates: Array<Coordinate>;
}

const MapDisplay = dynamic(
  () => import("../components/organisms/map/MapDisplay"),
  {
    ssr: false,
  }
);

export default function MapPage(props: Props) {
  const { coordinates } = props;
  return (
    <DefaultLayput>
      <MapDisplay coordinates={coordinates} />
    </DefaultLayput>
  );
}

export const getServerSideProps: GetServerSideProps = async (context) => {
  const fr = context.query.placeOfDeparture;
  const to = context.query.placeOfDestination;

  const response = await fetch(
    `http://localhost:8080/coordinate?fr=${fr}&to=${to}`
  );

  const coordinates = await response.json();

  return {
    props: { coordinates },
  };
};
