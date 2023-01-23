import { FC, ReactNode } from "react";
import { IconType } from "react-icons";
import { Flex, Icon, Link } from "@chakra-ui/react";

interface Props {
  link: string;
  icon: IconType;
  children: ReactNode;
}

export const NavItem: FC<Props> = (props) => {
  const { link, icon, children } = props;
  return (
    <Link
      href={link}
      style={{ textDecoration: "none" }}
      _focus={{ boxShadow: "none" }}
    >
      <Flex
        align="center"
        p="4"
        mx="4"
        borderRadius="lg"
        role="group"
        cursor="pointer"
        _hover={{
          bg: "cyan.400",
          color: "white",
        }}
      >
        {icon && (
          <Icon
            mr="4"
            fontSize="16"
            _groupHover={{
              color: "white",
            }}
            as={icon}
          />
        )}
        {children}
      </Flex>
    </Link>
  );
};
