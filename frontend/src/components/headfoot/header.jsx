import {
  Layout,
  Menu,
  Button,
  Drawer,
  Grid,
  Input,
  Badge,
  Avatar,
} from "antd";
import {
  LoginOutlined,
  MenuOutlined,
  ShoppingCartOutlined,
  UserOutlined,
} from "@ant-design/icons";
import { useState } from "react";
import { useNavigate } from "react-router-dom";

const { Header } = Layout;
const { useBreakpoint } = Grid;
const { Search } = Input;

const menuItems = [
  { key: "/", label: "Home" },
  { key: "/products", label: "Products" },
  { key: "/about", label: "About" },
  { key: "/contact", label: "Contact" },
];

const CustomerHeader = () => {
  const screens = useBreakpoint();
  const isMobile = !screens.md;
  const [open, setOpen] = useState(false);
  const navigate = useNavigate();

  return (
    <>
      <Header
        style={{
          background: "#3E2723",
          padding: "0 24px",
          display: "flex",
          alignItems: "center",
          justifyContent: "space-between",
          position: "sticky",
          top: 0,
          zIndex: 100,
          boxShadow: "0 4px 12px rgba(0,0,0,0.3)",
          height: 64,
        }}
      >
        {/* Left */}
        <div style={{ display: "flex", alignItems: "center", gap: 16 }}>
          {isMobile && (
            <Button
              type="text"
              icon={<MenuOutlined style={{ color: "#FFA500", fontSize: 20 }} />}
              onClick={() => setOpen(true)}
            />
          )}

          <div
            style={{
              fontSize: 22,
              fontWeight: 700,
              cursor: "pointer",
              color: "#FFA500",
              letterSpacing: "0.5px",
            }}
            onClick={() => navigate("/")}
          >
            ☕ MyShop
          </div>
        </div>

        {/* Center */}
        {!isMobile && (
          <div style={{ flex: 1, padding: "0 32px" }}>
            <Search
              placeholder="Search coffee, pastries..."
              allowClear
              style={{
                borderRadius: "6px",
              }}
              inputStyle={{
                backgroundColor: "#5D4037",
                color: "#FFA500",
                border: "none",
              }}
            />
          </div>
        )}

        {/* Right */}
        <div style={{ display: "flex", alignItems: "center", gap: 20 }}>
          {!isMobile && (
            <div style={{ display: "flex", gap: 24 }}>
              {menuItems.map((item) => (
                <span
                  key={item.key}
                  style={{
                    color: "#F5DEB3",
                    cursor: "pointer",
                    fontSize: 14,
                    fontWeight: 500,
                    transition: "all 0.3s ease",
                    borderBottom: "2px solid transparent",
                    paddingBottom: "2px",
                  }}
                  onMouseEnter={(e) => {
                    e.target.style.color = "#10B981";
                    e.target.style.borderBottomColor = "#10B981";
                  }}
                  onMouseLeave={(e) => {
                    e.target.style.color = "#F5DEB3";
                    e.target.style.borderBottomColor = "transparent";
                  }}
                  onClick={() => navigate(item.key)}
                >
                  {item.label}
                </span>
              ))}
            </div>
          )}

                    <Button
            style={{ color: "#5D4037", borderColor: "#5D4037" }}
            onClick={() => navigate("/register")}
          >
            Register
          </Button>

          <Button
            style={{ backgroundColor: "#5D4037", color: "#F5DEB3", borderColor: "#F5DEB3" }}
            icon={<LoginOutlined />}
            onClick={() => navigate("/login")}
          >
            Login
          </Button>

          {/* <Badge count={2} style={{ backgroundColor: "#10B981" }}>
            <ShoppingCartOutlined
              style={{
                fontSize: 20,
                cursor: "pointer",
                color: "#F5DEB3",
                transition: "color 0.3s ease",
              }}
              onMouseEnter={(e) => (e.target.style.color = "#10B981")}
              onMouseLeave={(e) => (e.target.style.color = "#F5DEB3")}
              onClick={() => navigate("/cart")}
            />
          </Badge>

          <Avatar
            icon={<UserOutlined />}
            style={{
              backgroundColor: "#10B981",
              cursor: "pointer",
              transition: "transform 0.3s ease",
            }}
            onMouseEnter={(e) => (e.target.style.transform = "scale(1.1)")}
            onMouseLeave={(e) => (e.target.style.transform = "scale(1)")}
          /> */}
        </div>
      </Header>

      {/* Mobile Drawer */}
      <Drawer
        title={<span style={{ color: "#3E2723", fontWeight: 700 }}>☕ Menu</span>}
        placement="left"
        open={open}
        onClose={() => setOpen(false)}
        styles={{
          body: { backgroundColor: "#F5DEB3", padding: "24px" },
          header: { backgroundColor: "#FFEAA7", borderBottom: "2px solid #3E2723" },
        }}
      >
        <Search
          placeholder="Search..."
          style={{ marginBottom: 24 }}
          inputStyle={{ backgroundColor: "#fff", borderColor: "#10B981" }}
        />
        <Menu
          mode="vertical"
          items={menuItems}
          onClick={({ key }) => {
            navigate(key);
            setOpen(false);
          }}
          style={{
            border: "none",
            backgroundColor: "#F5DEB3",
            color: "#3E2723",
          }}
          itemLabelRender={(label) => (
            <span style={{ fontWeight: 500 }}>{label}</span>
          )}
        />
      </Drawer>
    </>
  );
};

export default CustomerHeader;
