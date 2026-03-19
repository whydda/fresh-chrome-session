# fresh-chrome-session

macOS에서 실행할 때마다 **새 Chrome 세션**(새 프로필)으로 창을 엽니다.

## 사용법

```bash
chmod +x launch-fresh-chrome.sh FreshChrome.command
./launch-fresh-chrome.sh
```

특정 URL로 열기:

```bash
./launch-fresh-chrome.sh "https://google.com"
```

Finder에서 더블클릭 실행:

- `FreshChrome.command` 파일을 더블클릭

## 동작 방식

- 실행할 때마다 `/tmp/chrome-fresh-session.XXXXXX` 임시 폴더를 새로 만들어
- `--user-data-dir`로 전달해서 기존 로그인/쿠키와 분리된 Chrome 창을 엽니다.

## 참고

- Chrome 앱 경로: `/Applications/Google Chrome.app`
- 테스트용으로 만든 도구라, 임시 프로필 폴더가 `/tmp`에 남을 수 있습니다.
