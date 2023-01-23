import { ReactNode, FC } from "react";
import {
  Box,
  useColorModeValue,
  Drawer,
  DrawerContent,
  useDisclosure,
} from "@chakra-ui/react";
import { SidebarContent } from "../organisms/sidebar/SidebarContent";

import { Header } from "../organisms/header/Header";

interface Props {
  children: ReactNode;
}

export const DefaultLayput: FC<Props> = (props) => {
  const { children } = props;
  const { isOpen, onOpen, onClose } = useDisclosure();

  return (
    <Box minH="100vh" bg={useColorModeValue("gray.100", "gray.900")}>
      <SidebarContent
        onClose={() => onClose}
        display={{ base: "none", md: "block" }}
      />
      <Drawer
        autoFocus={false}
        isOpen={isOpen}
        placement="left"
        onClose={onClose}
        returnFocusOnClose={false}
        onOverlayClick={onClose}
        size="full"
      >
        <DrawerContent>
          <SidebarContent onClose={onClose} />
        </DrawerContent>
      </Drawer>
      <Header onMenuOpen={onOpen} />
      <Box ml={{ base: 0, md: 40 }} p={4}>
        {children}
      </Box>
    </Box>
  );
};
