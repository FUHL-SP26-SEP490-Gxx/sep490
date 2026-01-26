// layouts/CustomerLayout.jsx
import { Layout } from "antd";
import CustomerHeader from "../headfoot/header";
import CustomerFooter from "../headfoot/footer";

const { Content, Footer } = Layout;

const CustomerLayout = ({ children }) => {
  return (
    <Layout style={{ backgroundColor: "#FEFBF8", minHeight: "100vh" }}>
      <CustomerHeader />

      <Content
        style={{
          minHeight: "calc(100vh - 64px - 200px)",
          padding: "40px 24px",
          background: "linear-gradient(135deg, #FEFBF8 0%, #F9F5F0 100%)",
          margin: 0,
        }}
      >
        <div
          style={{
            maxWidth: "1200px",
            margin: "0 auto",
            borderRadius: "8px",
            backgroundColor: "#FFFFFF",
            padding: "24px",
            boxShadow: "0 2px 8px rgba(62, 39, 35, 0.08)",
          }}
        >
          {children}
        </div>
      </Content>

      <CustomerFooter />
    </Layout>
  );
};

export default CustomerLayout;
