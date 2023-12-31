USE [master]
GO
/****** Object:  Database [QUANLYKHACHHANG]    Script Date: 10/28/2023 1:23:19 AM ******/
CREATE DATABASE [QUANLYKHACHHANG]
GO
ALTER DATABASE [QUANLYKHACHHANG] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLYKHACHHANG].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLYKHACHHANG] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLYKHACHHANG] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QUANLYKHACHHANG] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QUANLYKHACHHANG] SET QUERY_STORE = ON
GO
ALTER DATABASE [QUANLYKHACHHANG] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [QUANLYKHACHHANG]
GO
/****** Object:  Table [dbo].[BAOTRI]    Script Date: 10/28/2023 1:23:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BAOTRI](
	[MaBaoTri] [char](5) NOT NULL,
	[MaKhachHang] [char](5) NULL,
	[NgayBaoTri] [date] NULL,
	[MoTa] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaBaoTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIETHOADON]    Script Date: 10/28/2023 1:23:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHOADON](
	[MaChiTietHoaDon] [char](5) NOT NULL,
	[MaHoaDon] [char](5) NULL,
	[MaDichVu] [char](5) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DICHVU]    Script Date: 10/28/2023 1:23:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DICHVU](
	[MaDichVu] [char](5) NOT NULL,
	[TenDichVu] [nvarchar](100) NULL,
	[MoTa] [nvarchar](200) NULL,
	[DonGia] [float] NULL,
	[ThoiHan] [int] NULL,
	[TocDo] [nvarchar](10) NULL,
	[DungLuong] [float] NULL,
	[MaKhuyenMai] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDichVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 10/28/2023 1:23:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MaHoaDon] [char](5) NOT NULL,
	[MaKhachHang] [char](5) NULL,
	[NgayLap] [date] NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 10/28/2023 1:23:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKhachHang] [char](5) NOT NULL,
	[TenKhachHang] [nvarchar](50) NULL,
	[NGAYSINH] [datetime] NULL,
	[GIOITINH] [nchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[SoDienThoai] [char](10) NULL,
	[Email] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHUYENMAI]    Script Date: 10/28/2023 1:23:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHUYENMAI](
	[MaKhuyenMai] [char](5) NOT NULL,
	[NoiDung] [nvarchar](200) NULL,
	[ThoiGianApDung] [date] NULL,
	[ThoiGianKetThuc] [date] NULL,
	[GiamGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKhuyenMai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOIDUNG]    Script Date: 10/28/2023 1:23:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOIDUNG](
	[MaNguoiDung] [char](5) NOT NULL,
	[TenDangNhap] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](30) NULL,
	[QuyenTruyCap] [int] NULL,
	[MaKhachHang] [char](5) NULL,
	[MaQuyenQuanTri] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHANHOI]    Script Date: 10/28/2023 1:23:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANHOI](
	[MaPhanHoi] [char](5) NOT NULL,
	[MaKhachHang] [char](5) NULL,
	[NoiDung] [nvarchar](200) NULL,
	[NgayGui] [date] NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhanHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QUYENQUANTRI]    Script Date: 10/28/2023 1:23:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QUYENQUANTRI](
	[MaQuyenQuanTri] [char](5) NOT NULL,
	[TenQuyenQuanTri] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyenQuanTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[THANHTOAN]    Script Date: 10/28/2023 1:23:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[THANHTOAN](
	[MaGiaoDich] [char](5) NOT NULL,
	[MaKhachHang] [char](5) NULL,
	[NgayThanhToan] [date] NULL,
	[SoTien] [float] NULL,
	[PhuongThucThanhToan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGiaoDich] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[BAOTRI] ([MaBaoTri], [MaKhachHang], [NgayBaoTri], [MoTa]) VALUES (N'BT001', N'KH001', CAST(N'2021-01-01' AS Date), N'Kiểm tra và bảo trì hệ thống')
INSERT [dbo].[BAOTRI] ([MaBaoTri], [MaKhachHang], [NgayBaoTri], [MoTa]) VALUES (N'BT002', N'KH002', CAST(N'2021-02-01' AS Date), N'Kiểm tra và bảo trì thiết bị')
INSERT [dbo].[BAOTRI] ([MaBaoTri], [MaKhachHang], [NgayBaoTri], [MoTa]) VALUES (N'BT003', N'KH003', CAST(N'2021-03-01' AS Date), N'Kiểm tra và bảo trì mạng')
INSERT [dbo].[BAOTRI] ([MaBaoTri], [MaKhachHang], [NgayBaoTri], [MoTa]) VALUES (N'BT004', N'KH004', CAST(N'2021-04-01' AS Date), N'Kiểm tra và bảo trì dịch vụ')
INSERT [dbo].[BAOTRI] ([MaBaoTri], [MaKhachHang], [NgayBaoTri], [MoTa]) VALUES (N'BT005', N'KH005', CAST(N'2021-05-01' AS Date), N'Kiểm tra và bảo trì hệ thống')
INSERT [dbo].[BAOTRI] ([MaBaoTri], [MaKhachHang], [NgayBaoTri], [MoTa]) VALUES (N'BT006', N'KH006', CAST(N'2021-06-01' AS Date), N'Kiểm tra và bảo trì thiết bị')
INSERT [dbo].[BAOTRI] ([MaBaoTri], [MaKhachHang], [NgayBaoTri], [MoTa]) VALUES (N'BT007', N'KH007', CAST(N'2021-07-01' AS Date), N'Kiểm tra và bảo trì mạng')
INSERT [dbo].[BAOTRI] ([MaBaoTri], [MaKhachHang], [NgayBaoTri], [MoTa]) VALUES (N'BT008', N'KH008', CAST(N'2021-08-01' AS Date), N'Kiểm tra và bảo trì dịch vụ')
INSERT [dbo].[BAOTRI] ([MaBaoTri], [MaKhachHang], [NgayBaoTri], [MoTa]) VALUES (N'BT009', N'KH009', CAST(N'2021-09-01' AS Date), N'Kiểm tra và bảo trì hệ thống')
INSERT [dbo].[BAOTRI] ([MaBaoTri], [MaKhachHang], [NgayBaoTri], [MoTa]) VALUES (N'BT010', N'KH010', CAST(N'2021-10-01' AS Date), N'Kiểm tra và bảo trì thiết bị')
GO
INSERT [dbo].[CHITIETHOADON] ([MaChiTietHoaDon], [MaHoaDon], [MaDichVu], [SoLuong], [DonGia]) VALUES (N'CT001', N'HD001', N'DV001', 1, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaChiTietHoaDon], [MaHoaDon], [MaDichVu], [SoLuong], [DonGia]) VALUES (N'CT002', N'HD002', N'DV002', 1, 500000)
INSERT [dbo].[CHITIETHOADON] ([MaChiTietHoaDon], [MaHoaDon], [MaDichVu], [SoLuong], [DonGia]) VALUES (N'CT003', N'HD003', N'DV003', 1, 300000)
INSERT [dbo].[CHITIETHOADON] ([MaChiTietHoaDon], [MaHoaDon], [MaDichVu], [SoLuong], [DonGia]) VALUES (N'CT004', N'HD004', N'DV004', 1, 100000)
INSERT [dbo].[CHITIETHOADON] ([MaChiTietHoaDon], [MaHoaDon], [MaDichVu], [SoLuong], [DonGia]) VALUES (N'CT005', N'HD005', N'DV005', 1, 150000)
INSERT [dbo].[CHITIETHOADON] ([MaChiTietHoaDon], [MaHoaDon], [MaDichVu], [SoLuong], [DonGia]) VALUES (N'CT006', N'HD006', N'DV006', 1, 400000)
INSERT [dbo].[CHITIETHOADON] ([MaChiTietHoaDon], [MaHoaDon], [MaDichVu], [SoLuong], [DonGia]) VALUES (N'CT007', N'HD007', N'DV007', 1, 250000)
INSERT [dbo].[CHITIETHOADON] ([MaChiTietHoaDon], [MaHoaDon], [MaDichVu], [SoLuong], [DonGia]) VALUES (N'CT008', N'HD008', N'DV008', 1, 200000)
INSERT [dbo].[CHITIETHOADON] ([MaChiTietHoaDon], [MaHoaDon], [MaDichVu], [SoLuong], [DonGia]) VALUES (N'CT009', N'HD009', N'DV009', 1, 300000)
INSERT [dbo].[CHITIETHOADON] ([MaChiTietHoaDon], [MaHoaDon], [MaDichVu], [SoLuong], [DonGia]) VALUES (N'CT010', N'HD010', N'DV010', 1, 0)
GO
INSERT [dbo].[DICHVU] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [ThoiHan], [TocDo], [DungLuong], [MaKhuyenMai]) VALUES (N'DV001', N'Gói Internet cá nhân', N'Gói cung cấp dịch vụ Internet cho cá nhân', 200000, 30, N'100Mbps', 100, N'KM001')
INSERT [dbo].[DICHVU] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [ThoiHan], [TocDo], [DungLuong], [MaKhuyenMai]) VALUES (N'DV002', N'Gói Internet doanh nghiệp', N'Gói cung cấp dịch vụ Internet cho doanh nghiệp', 500000, 30, N'200Mbps', 200, N'KM001')
INSERT [dbo].[DICHVU] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [ThoiHan], [TocDo], [DungLuong], [MaKhuyenMai]) VALUES (N'DV003', N'Gói truyền hình cáp', N'Gói cung cấp dịch vụ truyền hình cáp', 300000, 30, N'', 0, N'KM007')
INSERT [dbo].[DICHVU] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [ThoiHan], [TocDo], [DungLuong], [MaKhuyenMai]) VALUES (N'DV004', N'Gói điện thoại cố định', N'Gói cung cấp dịch vụ điện thoại cố định', 100000, 30, N'', 0, N'KM005')
INSERT [dbo].[DICHVU] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [ThoiHan], [TocDo], [DungLuong], [MaKhuyenMai]) VALUES (N'DV005', N'Gói điện thoại di động', N'Gói cung cấp dịch vụ điện thoại di động', 150000, 30, N'', 0, N'KM005')
INSERT [dbo].[DICHVU] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [ThoiHan], [TocDo], [DungLuong], [MaKhuyenMai]) VALUES (N'DV006', N'Gói tổng đài tự động', N'Gói cung cấp dịch vụ tổng đài tự động', 400000, 30, N'', 0, N'KM007')
INSERT [dbo].[DICHVU] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [ThoiHan], [TocDo], [DungLuong], [MaKhuyenMai]) VALUES (N'DV007', N'Gói lưu trữ dữ liệu', N'Gói cung cấp dịch vụ lưu trữ dữ liệu', 250000, 30, N'', 500, N'KM009')
INSERT [dbo].[DICHVU] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [ThoiHan], [TocDo], [DungLuong], [MaKhuyenMai]) VALUES (N'DV008', N'Gói email doanh nghiệp', N'Gói cung cấp dịch vụ email doanh nghiệp', 200000, 30, N'', 0, N'KM002')
INSERT [dbo].[DICHVU] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [ThoiHan], [TocDo], [DungLuong], [MaKhuyenMai]) VALUES (N'DV009', N'Gói VPN', N'Gói cung cấp dịch vụ mạng riêng ảo', 300000, 30, N'', 0, N'KM010')
INSERT [dbo].[DICHVU] ([MaDichVu], [TenDichVu], [MoTa], [DonGia], [ThoiHan], [TocDo], [DungLuong], [MaKhuyenMai]) VALUES (N'DV010', N'Gói dịch vụ khác', N'Gói cung cấp các dịch vụ khác', 0, 30, N'', 0, N'KM001')
GO
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [NgayLap], [TongTien]) VALUES (N'HD001', N'KH001', CAST(N'2021-01-01' AS Date), 500000)
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [NgayLap], [TongTien]) VALUES (N'HD002', N'KH002', CAST(N'2021-02-01' AS Date), 400000)
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [NgayLap], [TongTien]) VALUES (N'HD003', N'KH003', CAST(N'2021-03-01' AS Date), 300000)
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [NgayLap], [TongTien]) VALUES (N'HD004', N'KH004', CAST(N'2021-04-01' AS Date), 200000)
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [NgayLap], [TongTien]) VALUES (N'HD005', N'KH005', CAST(N'2021-05-01' AS Date), 100000)
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [NgayLap], [TongTien]) VALUES (N'HD006', N'KH006', CAST(N'2021-06-01' AS Date), 600000)
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [NgayLap], [TongTien]) VALUES (N'HD007', N'KH007', CAST(N'2021-07-01' AS Date), 700000)
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [NgayLap], [TongTien]) VALUES (N'HD008', N'KH008', CAST(N'2021-08-01' AS Date), 800000)
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [NgayLap], [TongTien]) VALUES (N'HD009', N'KH009', CAST(N'2021-09-01' AS Date), 900000)
INSERT [dbo].[HOADON] ([MaHoaDon], [MaKhachHang], [NgayLap], [TongTien]) VALUES (N'HD010', N'KH010', CAST(N'2021-10-01' AS Date), 1000000)
GO
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [NGAYSINH], [GIOITINH], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH001', N'Nguyễn Văn A', NULL, NULL, N'Hà Nội', N'0123456789', N'nguyenvana@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [NGAYSINH], [GIOITINH], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH002', N'Trần Thị B', NULL, NULL, N'Hồ Chí Minh', N'0987654321', N'tranthib@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [NGAYSINH], [GIOITINH], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH003', N'Lê Văn C', NULL, NULL, N'Đà Nẵng', N'0369852147', N'levanc@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [NGAYSINH], [GIOITINH], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH004', N'Phạm Thị D', NULL, NULL, N'Hải Phòng', N'0912345678', N'phamthid@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [NGAYSINH], [GIOITINH], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH005', N'Nguyễn Thị E', NULL, NULL, N'Cần Thơ', N'0987654321', N'nguyenthe@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [NGAYSINH], [GIOITINH], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH006', N'Trần Văn F', NULL, NULL, N'Hà Nội', N'0369852147', N'tranvanf@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [NGAYSINH], [GIOITINH], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH007', N'Lê Thị G', NULL, NULL, N'Hồ Chí Minh', N'0912345678', N'lethig@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [NGAYSINH], [GIOITINH], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH008', N'Phạm Văn H', NULL, NULL, N'Đà Nẵng', N'0123456789', N'phamvanh@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [NGAYSINH], [GIOITINH], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH009', N'Nguyễn Thị I', NULL, NULL, N'Hải Phòng', N'0987654321', N'nguyenthii@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKhachHang], [TenKhachHang], [NGAYSINH], [GIOITINH], [DiaChi], [SoDienThoai], [Email]) VALUES (N'KH010', N'Trần Văn J', NULL, NULL, N'Cần Thơ', N'0369852147', N'tranvanj@gmail.com')
GO
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [NoiDung], [ThoiGianApDung], [ThoiGianKetThuc], [GiamGia]) VALUES (N'KM001', N'Giảm giá 20% cho gói Internet cao cấp', CAST(N'2021-01-01' AS Date), CAST(N'2021-02-01' AS Date), 0.2)
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [NoiDung], [ThoiGianApDung], [ThoiGianKetThuc], [GiamGia]) VALUES (N'KM002', N'Miễn phí lắp đặt truyền hình cáp', CAST(N'2021-02-01' AS Date), CAST(N'2021-03-01' AS Date), 0.2)
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [NoiDung], [ThoiGianApDung], [ThoiGianKetThuc], [GiamGia]) VALUES (N'KM003', N'Giảm giá 10% cho dịch vụ điện thoại cố định', CAST(N'2021-03-01' AS Date), CAST(N'2021-04-01' AS Date), 0.1)
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [NoiDung], [ThoiGianApDung], [ThoiGianKetThuc], [GiamGia]) VALUES (N'KM004', N'Tặng thêm 1 tháng sử dụng khi gia hạn dịch vụ', CAST(N'2021-04-01' AS Date), CAST(N'2021-05-01' AS Date), 1)
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [NoiDung], [ThoiGianApDung], [ThoiGianKetThuc], [GiamGia]) VALUES (N'KM005', N'Giảm giá 15% cho gói tổng đài tự động', CAST(N'2021-05-01' AS Date), CAST(N'2021-06-01' AS Date), 0.15)
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [NoiDung], [ThoiGianApDung], [ThoiGianKetThuc], [GiamGia]) VALUES (N'KM006', N'Miễn phí cài đặt dịch vụ Internet', CAST(N'2021-06-01' AS Date), CAST(N'2021-07-01' AS Date), 0)
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [NoiDung], [ThoiGianApDung], [ThoiGianKetThuc], [GiamGia]) VALUES (N'KM007', N'Giảm giá 30% cho dịch vụ truyền hình cáp', CAST(N'2021-07-01' AS Date), CAST(N'2021-08-01' AS Date), 0.3)
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [NoiDung], [ThoiGianApDung], [ThoiGianKetThuc], [GiamGia]) VALUES (N'KM008', N'Tặng thêm 2 tháng sử dụng khi gia hạn dịch vụ', CAST(N'2021-08-01' AS Date), CAST(N'2021-09-01' AS Date), 2)
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [NoiDung], [ThoiGianApDung], [ThoiGianKetThuc], [GiamGia]) VALUES (N'KM009', N'Giảm giá 25% cho gói tổng đài tự động', CAST(N'2021-09-01' AS Date), CAST(N'2021-10-01' AS Date), 0.25)
INSERT [dbo].[KHUYENMAI] ([MaKhuyenMai], [NoiDung], [ThoiGianApDung], [ThoiGianKetThuc], [GiamGia]) VALUES (N'KM010', N'Miễn phí cài đặt dịch vụ truyền hình cáp', CAST(N'2021-10-01' AS Date), CAST(N'2021-11-01' AS Date), 0)
GO
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenTruyCap], [MaKhachHang], [MaQuyenQuanTri]) VALUES (N'ND001', N'admin', N'admin123', 1, N'KH001', N'QQ001')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenTruyCap], [MaKhachHang], [MaQuyenQuanTri]) VALUES (N'ND002', N'user1', N'pass123', 2, N'KH002', N'QQ002')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenTruyCap], [MaKhachHang], [MaQuyenQuanTri]) VALUES (N'ND003', N'user2', N'pass123', 2, N'KH003', N'QQ002')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenTruyCap], [MaKhachHang], [MaQuyenQuanTri]) VALUES (N'ND004', N'user3', N'pass123', 2, N'KH004', N'QQ002')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenTruyCap], [MaKhachHang], [MaQuyenQuanTri]) VALUES (N'ND005', N'user4', N'pass123', 2, N'KH005', N'QQ002')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenTruyCap], [MaKhachHang], [MaQuyenQuanTri]) VALUES (N'ND006', N'user5', N'pass123', 2, N'KH006', N'QQ002')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenTruyCap], [MaKhachHang], [MaQuyenQuanTri]) VALUES (N'ND007', N'user6', N'pass123', 2, N'KH007', N'QQ002')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenTruyCap], [MaKhachHang], [MaQuyenQuanTri]) VALUES (N'ND008', N'user7', N'pass123', 2, N'KH008', N'QQ002')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenTruyCap], [MaKhachHang], [MaQuyenQuanTri]) VALUES (N'ND009', N'user8', N'pass123', 2, N'KH009', N'QQ002')
INSERT [dbo].[NGUOIDUNG] ([MaNguoiDung], [TenDangNhap], [MatKhau], [QuyenTruyCap], [MaKhachHang], [MaQuyenQuanTri]) VALUES (N'ND010', N'user9', N'pass123', 2, N'KH010', N'QQ002')
GO
INSERT [dbo].[PHANHOI] ([MaPhanHoi], [MaKhachHang], [NoiDung], [NgayGui], [TrangThai]) VALUES (N'PH001', N'KH001', N'Tôi có một vấn đề về dịch vụ Internet của bạn. Mong bạn giúp đỡ.', CAST(N'2021-01-01' AS Date), 0)
INSERT [dbo].[PHANHOI] ([MaPhanHoi], [MaKhachHang], [NoiDung], [NgayGui], [TrangThai]) VALUES (N'PH002', N'KH002', N'Tôi muốn biết thêm thông tin về gói truyền hình cáp của bạn.', CAST(N'2021-02-01' AS Date), 0)
INSERT [dbo].[PHANHOI] ([MaPhanHoi], [MaKhachHang], [NoiDung], [NgayGui], [TrangThai]) VALUES (N'PH003', N'KH003', N'Tôi đang gặp sự cố với dịch vụ điện thoại cố định. Xin hãy kiểm tra và khắc phục.', CAST(N'2021-03-01' AS Date), 0)
INSERT [dbo].[PHANHOI] ([MaPhanHoi], [MaKhachHang], [NoiDung], [NgayGui], [TrangThai]) VALUES (N'PH004', N'KH004', N'Tôi cần hỗ trợ về việc gia hạn dịch vụ của mình.', CAST(N'2021-04-01' AS Date), 0)
INSERT [dbo].[PHANHOI] ([MaPhanHoi], [MaKhachHang], [NoiDung], [NgayGui], [TrangThai]) VALUES (N'PH005', N'KH005', N'Tôi muốn biết thêm thông tin về gói tổng đài tự động của bạn.', CAST(N'2021-05-01' AS Date), 0)
INSERT [dbo].[PHANHOI] ([MaPhanHoi], [MaKhachHang], [NoiDung], [NgayGui], [TrangThai]) VALUES (N'PH006', N'KH006', N'Tôi gặp sự cố với truyền hình cáp. Xin hãy kiểm tra và khắc phục.', CAST(N'2021-06-01' AS Date), 0)
INSERT [dbo].[PHANHOI] ([MaPhanHoi], [MaKhachHang], [NoiDung], [NgayGui], [TrangThai]) VALUES (N'PH007', N'KH007', N'Tôi cần hỗ trợ về việc đăng ký gói Internet cao cấp.', CAST(N'2021-07-01' AS Date), 0)
INSERT [dbo].[PHANHOI] ([MaPhanHoi], [MaKhachHang], [NoiDung], [NgayGui], [TrangThai]) VALUES (N'PH008', N'KH008', N'Tôi muốn biết thêm thông tin về dịch vụ điện thoại cố định.', CAST(N'2021-08-01' AS Date), 0)
INSERT [dbo].[PHANHOI] ([MaPhanHoi], [MaKhachHang], [NoiDung], [NgayGui], [TrangThai]) VALUES (N'PH009', N'KH009', N'Tôi cần hỗ trợ về việc thanh toán hóa đơn.', CAST(N'2021-09-01' AS Date), 0)
INSERT [dbo].[PHANHOI] ([MaPhanHoi], [MaKhachHang], [NoiDung], [NgayGui], [TrangThai]) VALUES (N'PH010', N'KH010', N'Tôi muốn biết thêm chính sách khuyến mãi hiện có.', CAST(N'2021-10-01' AS Date), 0)
GO
INSERT [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri], [TenQuyenQuanTri]) VALUES (N'QQ001', N'Quản trị viên')
INSERT [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri], [TenQuyenQuanTri]) VALUES (N'QQ002', N'Người dùng')
INSERT [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri], [TenQuyenQuanTri]) VALUES (N'QQ003', N'Nhân viên bảo trì')
INSERT [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri], [TenQuyenQuanTri]) VALUES (N'QQ004', N'Nhân viên kinh doanh')
INSERT [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri], [TenQuyenQuanTri]) VALUES (N'QQ005', N'Nhân viên hỗ trợ khách hàng')
INSERT [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri], [TenQuyenQuanTri]) VALUES (N'QQ006', N'Nhân viên tài chính')
INSERT [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri], [TenQuyenQuanTri]) VALUES (N'QQ007', N'Nhân viên marketing')
INSERT [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri], [TenQuyenQuanTri]) VALUES (N'QQ008', N'Nhân viên phát triển sản phẩm')
INSERT [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri], [TenQuyenQuanTri]) VALUES (N'QQ009', N'Nhân viên dịch vụ khách hàng')
INSERT [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri], [TenQuyenQuanTri]) VALUES (N'QQ010', N'Nhân viên chăm sóc khách hàng')
GO
INSERT [dbo].[THANHTOAN] ([MaGiaoDich], [MaKhachHang], [NgayThanhToan], [SoTien], [PhuongThucThanhToan]) VALUES (N'TT001', N'KH001', CAST(N'2021-01-01' AS Date), 1000000, NULL)
INSERT [dbo].[THANHTOAN] ([MaGiaoDich], [MaKhachHang], [NgayThanhToan], [SoTien], [PhuongThucThanhToan]) VALUES (N'TT002', N'KH002', CAST(N'2021-02-01' AS Date), 1500000, NULL)
INSERT [dbo].[THANHTOAN] ([MaGiaoDich], [MaKhachHang], [NgayThanhToan], [SoTien], [PhuongThucThanhToan]) VALUES (N'TT003', N'KH003', CAST(N'2021-03-01' AS Date), 800000, NULL)
INSERT [dbo].[THANHTOAN] ([MaGiaoDich], [MaKhachHang], [NgayThanhToan], [SoTien], [PhuongThucThanhToan]) VALUES (N'TT004', N'KH004', CAST(N'2021-04-01' AS Date), 1200000, NULL)
INSERT [dbo].[THANHTOAN] ([MaGiaoDich], [MaKhachHang], [NgayThanhToan], [SoTien], [PhuongThucThanhToan]) VALUES (N'TT005', N'KH005', CAST(N'2021-05-01' AS Date), 900000, NULL)
INSERT [dbo].[THANHTOAN] ([MaGiaoDich], [MaKhachHang], [NgayThanhToan], [SoTien], [PhuongThucThanhToan]) VALUES (N'TT006', N'KH006', CAST(N'2021-06-01' AS Date), 1100000, NULL)
INSERT [dbo].[THANHTOAN] ([MaGiaoDich], [MaKhachHang], [NgayThanhToan], [SoTien], [PhuongThucThanhToan]) VALUES (N'TT007', N'KH007', CAST(N'2021-07-01' AS Date), 1300000, NULL)
INSERT [dbo].[THANHTOAN] ([MaGiaoDich], [MaKhachHang], [NgayThanhToan], [SoTien], [PhuongThucThanhToan]) VALUES (N'TT008', N'KH008', CAST(N'2021-08-01' AS Date), 950000, NULL)
INSERT [dbo].[THANHTOAN] ([MaGiaoDich], [MaKhachHang], [NgayThanhToan], [SoTien], [PhuongThucThanhToan]) VALUES (N'TT009', N'KH009', CAST(N'2021-09-01' AS Date), 750000, NULL)
INSERT [dbo].[THANHTOAN] ([MaGiaoDich], [MaKhachHang], [NgayThanhToan], [SoTien], [PhuongThucThanhToan]) VALUES (N'TT010', N'KH010', CAST(N'2021-10-01' AS Date), 1400000, NULL)
GO
ALTER TABLE [dbo].[BAOTRI]  WITH CHECK ADD  CONSTRAINT [FK_BAOTRI_KHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[BAOTRI] CHECK CONSTRAINT [FK_BAOTRI_KHACHHANG]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_DICHVU] FOREIGN KEY([MaDichVu])
REFERENCES [dbo].[DICHVU] ([MaDichVu])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_DICHVU]
GO
ALTER TABLE [dbo].[CHITIETHOADON]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETHOADON_HOADON] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HOADON] ([MaHoaDon])
GO
ALTER TABLE [dbo].[CHITIETHOADON] CHECK CONSTRAINT [FK_CHITIETHOADON_HOADON]
GO
ALTER TABLE [dbo].[DICHVU]  WITH CHECK ADD  CONSTRAINT [FK_DICHVU_KHUYENMAI] FOREIGN KEY([MaKhuyenMai])
REFERENCES [dbo].[KHUYENMAI] ([MaKhuyenMai])
GO
ALTER TABLE [dbo].[DICHVU] CHECK CONSTRAINT [FK_DICHVU_KHUYENMAI]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_KHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_KHACHHANG]
GO
ALTER TABLE [dbo].[NGUOIDUNG]  WITH CHECK ADD  CONSTRAINT [FK_NGUOIDUNG_QUYENQUANTRI] FOREIGN KEY([MaQuyenQuanTri])
REFERENCES [dbo].[QUYENQUANTRI] ([MaQuyenQuanTri])
GO
ALTER TABLE [dbo].[NGUOIDUNG] CHECK CONSTRAINT [FK_NGUOIDUNG_QUYENQUANTRI]
GO
ALTER TABLE [dbo].[PHANHOI]  WITH CHECK ADD  CONSTRAINT [FK_PHANHOI_KHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[PHANHOI] CHECK CONSTRAINT [FK_PHANHOI_KHACHHANG]
GO
ALTER TABLE [dbo].[THANHTOAN]  WITH CHECK ADD  CONSTRAINT [FK_THANHTOAN_KHACHHANG] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KHACHHANG] ([MaKhachHang])
GO
ALTER TABLE [dbo].[THANHTOAN] CHECK CONSTRAINT [FK_THANHTOAN_KHACHHANG]
GO
USE [master]
GO
ALTER DATABASE [QUANLYKHACHHANG] SET  READ_WRITE 
GO
