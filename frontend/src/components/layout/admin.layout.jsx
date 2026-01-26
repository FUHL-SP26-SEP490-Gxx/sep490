import { Layout, Button, Grid, Typography } from "antd";
import { MenuOutlined } from "@ant-design/icons";
import { useState } from "react";
import AdminSidebar from "../sidebars/admin.sidebar.jsx";

const { Header, Content } = Layout;
const { Title } = Typography;
const { useBreakpoint } = Grid;

const MainLayout = ({ children, title }) => {
  const screens = useBreakpoint();
  const isMobile = !screens.md;

  const [collapsed, setCollapsed] = useState(isMobile);

  return (
    <Layout style={{ minHeight: "100vh" }}>
      <AdminSidebar
        collapsed={collapsed}
        onCloseMobile={() => setCollapsed(true)}
      />

      <Layout>
        <Header
          style={{
            background: "#3E2723",
            padding: "0 24px",
            display: "flex",
            alignItems: "center",
            gap: 16,
            boxShadow: "0 2px 8px rgba(0, 0, 0, 0.15)",
          }}
        >
          <Button
            type="text"
            icon={<MenuOutlined style={{ color: "#FFA500", fontSize: 20 }} />}
            onClick={() => setCollapsed(!collapsed)}
            style={{
              transition: "all 0.3s ease",
            }}
            onMouseEnter={(e) => {
              e.currentTarget.querySelector("span").style.color = "#10B981";
            }}
            onMouseLeave={(e) => {
              e.currentTarget.querySelector("span").style.color = "#FFA500";
            }}
          />

          {/* Title */}
          <Title level={4} style={{ margin: 0, color: "#F5DEB3", fontWeight: 700 }}>
            {title}
          </Title>
        </Header>

        <Content
          style={{
            margin: 16,
            padding: 24,
            background: "#F9F5F0",
            borderRadius: "8px",
            boxShadow: "0 1px 4px rgba(62, 39, 35, 0.1)",
          }}
        >
          {children}
        </Content>
      </Layout>
    </Layout>
  );
};

export default MainLayout;
