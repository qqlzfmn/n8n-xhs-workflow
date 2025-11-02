# n8n-xhs-workflow

## Deploy
1. `git clone https://github.com/qqlzfmn/n8n-xhs-workflow.git`
2. `docker compose up -d`
3. Open n8n `http://localhost:45678` in your browser.
4. Create a root user.
4. Import workflow from file `workflow/xhs-agent.json`.
5. Create credentials for the nodes.
6. Run and activate the workflow.
7. Check `http://localhost:48080`
8. Enjoy!

## Usage
1. Start a mcp inspector with `bunx @modelcontextprotocol/inspector`
2. Check `http://localhost:6274`
3. Connect `http://localhost:48060/mcp` with `Streamable HTTP` `Via Proxy`
4. Run `get_login_qrcode` tool and scan the qrcode
5. Run `check_login_status` tool and check if `IsLoggedIn` is `True`
6. After logged in, you can manage your xiaohongshu with chat ai
7. Other usages: [项目简介](https://github.com/xpzouying/xiaohongshu-mcp/tree/main?tab=readme-ov-file#%E9%A1%B9%E7%9B%AE%E7%AE%80%E4%BB%8B)

## 🙏 Acknowledgments
- This project was inspired by [xiaohongshu-mcp](https://github.com/xpzouying/xiaohongshu-mcp).
- Special thanks to [n8n](https://github.com/n8n-io/n8n)
