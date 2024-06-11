# 使用 Python 官方映像作為基礎映像
FROM python:3.8-slim

# 設定工作目錄
WORKDIR /app

# 複製本地代碼到容器中
COPY . /app

# 安裝 dbt
RUN pip install --no-cache-dir -r /app/requirements.txt

# 設置環境變數
ENV DBT_PROFILES_DIR=/app/.dbt

# 維持容器持續運行的命令
CMD ["tail", "-f", "/dev/null"]