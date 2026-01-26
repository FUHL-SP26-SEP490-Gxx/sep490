import { Layout, Row, Col, Typography, Space } from "antd";
import {
  FacebookOutlined,
  InstagramOutlined,
  YoutubeOutlined,
  MailOutlined,
  PhoneOutlined,
} from "@ant-design/icons";

const { Footer } = Layout;
const { Title, Text, Link } = Typography;

const CustomerFooter = () => {
  return (
    <Footer style={{ background: "#3E2723", color: "#F5DEB3", padding: "48px 24px" }}>
      <Row gutter={[32, 32]}>
        {/* About Us */}
        <Col xs={24} md={8}>
          <Title
            level={4}
            style={{
              color: "#FFA500",
              marginBottom: 16,
              fontSize: 18,
              fontWeight: 700,
            }}
          >
            ☕ About Us
          </Title>
          <Text style={{ color: "#F5DEB3", lineHeight: 1.6 }}>
            Premium coffee and pastries crafted with passion. We bring the warmth
            and comfort of a cozy café to your doorstep.
          </Text>
        </Col>

        {/* Quick Links */}
        <Col xs={24} md={8}>
          <Title level={5} style={{ color: "#FFA500", fontSize: 16, fontWeight: 700 }}>
            Quick Links
          </Title>
          <Space direction="vertical" style={{ display: "flex", gap: "12px" }}>
            <Link
              href="/"
              style={{ color: "#F5DEB3", transition: "color 0.3s ease" }}
              onMouseEnter={(e) => (e.target.style.color = "#10B981")}
              onMouseLeave={(e) => (e.target.style.color = "#F5DEB3")}
            >
              Home
            </Link>
            <Link
              href="/products"
              style={{ color: "#F5DEB3", transition: "color 0.3s ease" }}
              onMouseEnter={(e) => (e.target.style.color = "#10B981")}
              onMouseLeave={(e) => (e.target.style.color = "#F5DEB3")}
            >
              Products
            </Link>
            <Link
              href="/about"
              style={{ color: "#F5DEB3", transition: "color 0.3s ease" }}
              onMouseEnter={(e) => (e.target.style.color = "#10B981")}
              onMouseLeave={(e) => (e.target.style.color = "#F5DEB3")}
            >
              About Us
            </Link>
            <Link
              href="/contact"
              style={{ color: "#F5DEB3", transition: "color 0.3s ease" }}
              onMouseEnter={(e) => (e.target.style.color = "#10B981")}
              onMouseLeave={(e) => (e.target.style.color = "#F5DEB3")}
            >
              Contact
            </Link>
          </Space>
        </Col>

        {/* Social Media */}
        <Col xs={24} md={8}>
          <Title level={5} style={{ color: "#FFA500", fontSize: 16, fontWeight: 700 }}>
            Contact & Follow
          </Title>
          <Space direction="vertical" style={{ display: "flex", gap: "12px" }}>
            <Text style={{ color: "#F5DEB3" }}>
              <PhoneOutlined style={{ color: "#10B981", marginRight: 8 }} /> 0123
              456 789
            </Text>
            <Text style={{ color: "#F5DEB3" }}>
              <MailOutlined style={{ color: "#10B981", marginRight: 8 }} />{" "}
              support@myshop.com
            </Text>

            <Space size="large" style={{ marginTop: 8 }}>
              <FacebookOutlined
                style={{
                  fontSize: 20,
                  color: "#F5DEB3",
                  cursor: "pointer",
                  transition: "color 0.3s ease",
                }}
                onMouseEnter={(e) => (e.target.style.color = "#10B981")}
                onMouseLeave={(e) => (e.target.style.color = "#F5DEB3")}
              />
              <InstagramOutlined
                style={{
                  fontSize: 20,
                  color: "#F5DEB3",
                  cursor: "pointer",
                  transition: "color 0.3s ease",
                }}
                onMouseEnter={(e) => (e.target.style.color = "#10B981")}
                onMouseLeave={(e) => (e.target.style.color = "#F5DEB3")}
              />
              <YoutubeOutlined
                style={{
                  fontSize: 20,
                  color: "#F5DEB3",
                  cursor: "pointer",
                  transition: "color 0.3s ease",
                }}
                onMouseEnter={(e) => (e.target.style.color = "#10B981")}
                onMouseLeave={(e) => (e.target.style.color = "#F5DEB3")}
              />
            </Space>
          </Space>
        </Col>
      </Row>

      {/* Bottom */}
      <div
        style={{
          marginTop: 32,
          borderTop: "1px solid rgba(245, 222, 179, 0.2)",
          paddingTop: 16,
          textAlign: "center",
          color: "#D4A574",
          fontSize: 13,
        }}
      >
        © {new Date().getFullYear()} MyShop Coffee. All rights reserved. ☕ Created
        with passion
      </div>
    </Footer>
  );
};

export default CustomerFooter;
