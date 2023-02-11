import {
  IconButton,
  Flex,
  HStack,
  useColorModeValue,
  Text,
  useDisclosure,
} from "@chakra-ui/react";
import { FiMenu, FiSearch } from "react-icons/fi";
import { UserIcon } from "../../atoms/user/UserIcon";
import { UserDetailModal } from "../map/CoordinateSearchModal";
import { FC } from "react";

interface Props {
  onMenuOpen: () => void;
}

export const Header: FC<Props> = (props) => {
  const { onMenuOpen, ...rest } = props;
  const { isOpen, onOpen, onClose } = useDisclosure();

  return (
    <Flex
      ml={{ base: 0, md: 40 }}
      px={{ base: 4, md: 4 }}
      height="20"
      alignItems="center"
      bg={useColorModeValue("white", "gray.900")}
      borderBottomWidth="1px"
      borderBottomColor={useColorModeValue("gray.200", "gray.700")}
      justifyContent={{ base: "space-between", md: "flex-end" }}
      {...rest}
    >
      <IconButton
        display={{ base: "flex", md: "none" }}
        onClick={onMenuOpen}
        variant="outline"
        aria-label="open menu"
        icon={<FiMenu />}
      />
      <Text
        display={{ base: "flex", md: "none" }}
        fontSize="2xl"
        fontFamily="monospace"
        fontWeight="bold"
      >
        愛工大案内する蔵
      </Text>
      <HStack spacing={{ base: "0", md: "6" }}>
        <IconButton
          size="lg"
          variant="ghost"
          onClick={onOpen}
          aria-label="open menu"
          icon={<FiSearch />}
        />
      </HStack>
      <UserDetailModal isOpen={isOpen} onClose={onClose} />
    </Flex>
  );
};
