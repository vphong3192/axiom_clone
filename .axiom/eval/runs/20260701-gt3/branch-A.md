# TCP vs UDP — 5 khác biệt chính

- **Kết nối:** TCP hướng kết nối (bắt tay 3 bước trước khi truyền); UDP không kết nối, gửi ngay không thiết lập phiên.
- **Độ tin cậy:** TCP đảm bảo dữ liệu đến nơi (xác nhận ACK, truyền lại khi mất gói); UDP không đảm bảo, gói có thể mất mà không báo.
- **Thứ tự dữ liệu:** TCP sắp xếp lại gói đúng thứ tự khi nhận; UDP không giữ thứ tự, gói có thể đến lộn xộn.
- **Tốc độ & chi phí:** UDP nhanh hơn, độ trễ thấp, header nhỏ (8 byte); TCP chậm hơn do kiểm soát luồng, tránh tắc nghẽn và header lớn hơn (20+ byte).
- **Ứng dụng:** TCP dùng cho web, email, truyền file (cần chính xác); UDP dùng cho streaming, game online, VoIP, DNS (cần nhanh, chấp nhận mất mát nhỏ).
