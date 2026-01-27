# QUY TRÌNH GIT CHO TEAM 5 NGƯỜI (GitHub Desktop & Git Bash)

Tài liệu chuẩn cho nhóm 5 người, dùng song song GitHub Desktop và Git Bash. Mục tiêu: ít xung đột, rõ ràng trách nhiệm, release ổn định.

## 1. Nhánh và vai trò
- `main`: code ổn định, tương ứng production. Merge qua Pull Request (PR) đã review.
- `develop`: nhánh tích hợp. Mọi tính năng và hotfix đều merge vào đây trước.
- `feature/<ten-ban>/<tinh-nang>`: nhánh làm việc hàng ngày.
- `hotfix/<ten-ban>/<noi-dung>`: sửa lỗi khẩn cấp từ `main`.
- Luân phiên một người/tuần làm Release Captain: kiểm tra PR, gắn reviewer, theo dõi release.

## 2. Chu kỳ làm việc hằng ngày
### B1: Đồng bộ code mới
- GitHub Desktop: chọn `develop` -> **Fetch origin** -> nếu có thay đổi bấm **Pull origin**.
- Git Bash:
```bash
git checkout develop
git pull origin develop
```

### B2: Tạo nhánh làm việc
- GitHub Desktop: **Current Branch** -> **New Branch** -> nhập `feature/nam/login-page` -> Based on `develop`.
- Git Bash:
```bash
git checkout develop
git checkout -b feature/nam/login-page
```

### B3: Code và commit nhỏ, rõ
- Quy ước commit: `<type>: <noi-dung-ngan>` với type: feat, fix, chore, docs, refactor, test.
- Ví dụ: `feat: add login form validation`.
- GitHub Desktop: viết Summary -> **Commit to <branch>**.
- Git Bash:
```bash
git status
git add .
git commit -m "feat: add login form validation"
```

### B4: Push nhánh lên remote
- GitHub Desktop: **Publish branch** hoặc **Push origin**.
- Git Bash:
```bash
git push -u origin feature/nam/login-page
```

### B5: Mở Pull Request (PR)
- GitHub Desktop: **Create Pull Request** -> chọn reviewer (tối thiểu 1 người khác bạn; ưu tiên Captain).
- GitHub Web: điền mô tả ngắn, checklist test, gắn label nếu có.

## 3. Quy tắc review và merge
- Yêu cầu: >=1 approval, không tự merge PR của chính mình trừ khi Captain chấp thuận.
- Merge strategy: ưu tiên **Squash and merge** để log gọn; hotfix có thể **Merge commit** nếu cần giữ lịch sử.
- Trước khi merge: đảm bảo `develop` đã được rebase/merge mới nhất để tránh conflict.

## 4. Xử lý conflict
### Trên GitHub Desktop
1.  Ở nhánh của bạn: menu **Branch** -> **Merge into current branch** -> chọn `develop`.
2.  Khi báo conflict -> **Open in Visual Studio Code**.
3.  Sửa, lưu, quay lại Desktop -> **Commit merge** -> **Push origin**.

### Trên Git Bash
```bash
git checkout feature/nam/login-page
git fetch origin
git merge origin/develop   # hoặc git rebase origin/develop nếu quen
# Sửa file conflict, rồi:
git add .
git commit                  # commit merge hoặc tiếp tục rebase bằng git rebase --continue
git push
```

## 5. Hotfix từ production
1.  `git checkout main` -> `git pull`.
2.  Tạo nhánh `hotfix/<ten-ban>/<noi-dung>` từ `main`.
3.  Sửa lỗi, commit, mở PR vào `main` (review nhanh 1 người).
4.  Sau khi merge vào `main`, ngay lập tức merge hoặc cherry-pick vào `develop` để không lệch code.

## 6. Chu kỳ release
- Cuối sprint: Captain tạo PR `develop` -> `main`.
- Kiểm tra lại checklist: test pass, log thay đổi, version/tag nếu cần.
- Sau khi merge, tạo tag: `vX.Y.Z` trên `main` (Desktop: **Create Tag**; Bash: `git tag v1.0.0` -> `git push origin v1.0.0`).

## 7. Lịch đồng bộ và dọn nhánh
- Mỗi sáng: pull `develop` trước khi code.
- Sau khi PR merge: xóa nhánh feature trên remote và local để repo gọn.
- Mỗi người tối đa 1-2 PR mở cùng lúc để giảm chồng chéo.

## 8. Check nhanh trước khi mở PR
- Đã chạy lint/test cục bộ (nếu có) và build không lỗi.
- Không commit file môi trường, build output.
- Mô tả PR ngắn gọn: mục tiêu, phạm vi, kết quả test.

## 9. Lưu ý công cụ
- GitHub Desktop: ưu tiên cho thao tác thường ngày, xem diff nhanh, tạo PR.
- Git Bash: dùng khi cần rebase, cherry-pick, hoặc xử lý conflict phức tạp.