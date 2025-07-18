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
1. Chat with agent: `登录小红书`
2. Check `http://localhost:44444`
3. Scan the login QR code.
4. Other usages: [💬 AI对话式操作指南](https://github.com/aki66938/xhs-toolkit?tab=readme-ov-file#-ai%E5%AF%B9%E8%AF%9D%E5%BC%8F%E6%93%8D%E4%BD%9C%E6%8C%87%E5%8D%97)

## Known issues
- "下载图片失败" from xhs-toolkit, to fix this, you can add a "Download Image" node.

## 🙏 Acknowledgments
- This project was inspired by [xhs-toolkit](https://github.com/aki66938/xhs-toolkit).
- Special thanks to [n8n](https://github.com/n8n-io/n8n)
