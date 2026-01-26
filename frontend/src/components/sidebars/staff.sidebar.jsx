'use client';

import { Layout, Menu, Drawer, Grid } from "antd";
import {
  DashboardOutlined,
  UserOutlined,
  SettingOutlined,
} from "@ant-design/icons";
import { useNavigate, useLocation } from "react-router-dom";

const { Sider } = Layout;
const { useBreakpoint } = Grid;

const items = [
  { key: "/staff", icon: <DashboardOutlined />, label: "Dashboard"},
  { key: "/staff/users", icon: <UserOutlined />, label: "Users"},
  { key: "/staff/settings", icon: <SettingOutlined />, label: "Settings"},
];

const StaffSidebar = ({ collapsed, onCloseMobile }) => {
  const screens = useBreakpoint();
  const isMobile = !screens.md;

  const navigate = useNavigate();
  const location = useLocation();

  const menu = (
    <Menu
      theme="dark"
      mode="inline"
      items={items}
      selectedKeys={[location.pathname]}
      style={{
        borderRight: 0,
        backgroundColor: "#3E2723",
        color: "#F5DEB3",
      }}
      itemLabelRender={(label) => (
        <span style={{ color: "#F5DEB3", fontWeight: 500 }}>{label}</span>
      )}
      onClick={({ key }) => {
        navigate(key);
        if (isMobile) onCloseMobile?.();
      }}
      itemSelectedStyle={{
        backgroundColor: "#10B981 !important",
        color: "#fff !important",
      }}
      itemHoverStyle={{
        backgroundColor: "#10B981 !important",
        color: "#fff !important",
      }}
    />
  );

  /* ===== Mobile: Drawer ===== */
  if (isMobile) {
    return (
      <Drawer
        placement="left"
        open={!collapsed}
        closable={false}
        width={240}
        bodyStyle={{ padding: 0, backgroundColor: "#3E2723" }}
        styles={{
          header: { backgroundColor: "#3E2723", borderBottom: "2px solid #10B981" },
        }}
        onClose={onCloseMobile}
      >
        {/* Header Drawer */}
        <div
          style={{
            height: 64,
            display: "flex",
            alignItems: "center",
            padding: "0 16px",
            fontWeight: 600,
            fontSize: 18,
            background: "#3E2723",
            color: "#FFA500",
            borderBottom: "2px solid #10B981",
            letterSpacing: "0.5px",
          }}
        >
          ☕ Admin Panel
        </div>

        {menu}
      </Drawer>
    );
  }

  /* ===== Desktop / Tablet: Sider ===== */
  return (
    <Sider
      collapsible
      collapsed={collapsed}
      width={240}
      trigger={null}
      style={{ backgroundColor: "#3E2723" }}
    >
      {/* Logo / Brand */}
      <div
        style={{
          height: 64,
          display: "flex",
          alignItems: "center",
          justifyContent: collapsed ? "center" : "flex-start",
          paddingLeft: collapsed ? 0 : 16,
          fontWeight: 700,
          fontSize: 18,
          color: "#FFA500",
          transition: "all 0.2s ease",
          backgroundColor: "#3E2723",
          borderBottom: "2px solid #10B981",
          letterSpacing: "0.5px",
        }}
      >
        {collapsed ? "☕" : "☕ Admin Panel"}
      </div>

      {menu}
    </Sider>
  );
};

export default StaffSidebar;
