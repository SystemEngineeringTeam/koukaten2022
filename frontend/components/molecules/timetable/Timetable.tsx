import { TimeItem } from "../../atoms/timetable/TableItem";
import { FC } from "react";
import {
  TableContainer,
  Table,
  TableCaption,
  Thead,
  Tr,
  Th,
  Tbody,
  Td,
  Tfoot,
} from "@chakra-ui/react";

export const Timetable: FC = () => {
  return (
    <TableContainer>
      <Table variant="simple">
        <TableCaption>愛知工業大学</TableCaption>
        <Thead>
          <Tr>
            <Th></Th>
            <Th>月</Th>
            <Th>火</Th>
            <Th>水</Th>
            <Th>木</Th>
            <Th>金</Th>
          </Tr>
        </Thead>
        <Tbody>
          <Tr>
            <Td>I</Td>
            <Td>
              <TimeItem />
            </Td>
            <Td>millimetres (mm)</Td>
            <Td>millimetres (mm)</Td>
            <Td>millimetres (mm)</Td>
            <Td>millimetres (mm)</Td>
          </Tr>
          <Tr>
            <Td>II</Td>
            <Td>centimetres (cm)</Td>
          </Tr>
          <Tr>
            <Td>III</Td>
            <Td>metres (m)</Td>
          </Tr>
          <Tr>
            <Td>IV</Td>
            <Td>millimetres (mm)</Td>
          </Tr>
          <Tr>
            <Td>V</Td>
            <Td>centimetres (cm)</Td>
          </Tr>
          <Tr>
            <Td>VI</Td>
            <Td>metres (m)</Td>
          </Tr>
          <Tr>
            <Td>VII</Td>
          </Tr>
        </Tbody>
        <Tfoot>
          <Tr>
            <Th></Th>
            <Th>月</Th>
            <Th>火</Th>
            <Th>水</Th>
            <Th>木</Th>
            <Th>金</Th>
          </Tr>
        </Tfoot>
      </Table>
    </TableContainer>
  );
};
