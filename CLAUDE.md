# hoonse-claude-template

이 프로젝트는 [hoonse-claude-plugins](https://github.com/iamhoonse-dev/hoonse-claude-plugins) 마켓플레이스와 함께 사용하도록 구성된 템플릿입니다.

## 시작하기

1. `/setup` 을 실행하면 마켓플레이스 등록과 플러그인 설치를 안내받을 수 있습니다.
2. 또는 직접 설치할 수 있습니다:
   ```
   /plugin marketplace add iamhoonse-dev/hoonse-claude-plugins
   /plugin install <plugin-name>@hoonse-claude-plugins
   ```

## 구조

- `.claude/settings.json` - 마켓플레이스 및 플러그인 설정 (git 공유)
- `.claude/settings.local.json` - 개인 설정 (gitignore)
- `.claude/skills/setup/` - 초기 셋업 스킬 (부트스트래퍼)