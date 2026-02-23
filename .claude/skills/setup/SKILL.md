---
name: setup
description: hoonse-claude-plugins 마켓플레이스를 등록하고 플러그인을 설치하는 초기 셋업 가이드
user-invocable: true
---

# 초기 셋업 가이드

이 프로젝트는 hoonse-claude-plugins 마켓플레이스의 플러그인을 사용하도록 구성되어 있습니다.
아래 단계에 따라 사용자가 마켓플레이스를 등록하고 플러그인을 설치할 수 있도록 안내하세요.

## 실행 절차

### 1단계: 마켓플레이스 등록 확인

먼저 마켓플레이스가 이미 등록되어 있는지 확인하세요:

```
/plugin marketplace list
```

`hoonse-claude-plugins`가 목록에 없다면 등록을 안내하세요:

```
/plugin marketplace add iamhoonse-dev/hoonse-claude-plugins
```

### 2단계: 플러그인 설치

`.claude/settings.json`의 `enabledPlugins`에 선언된 플러그인 목록을 읽어서 사용자에게 보여주세요.
각 플러그인을 **공통 플러그인**과 **기술 스택 플러그인**으로 분류하여 안내합니다:

**공통 플러그인** (모든 프로젝트에 권장):
| 플러그인 | 설명 |
|---------|------|
| `claude-logger` | 세션 중 도구 사용과 프롬프트를 자동 로깅 |
| `technical-writing` | 기술 문서 작성 에이전트 및 README 구조 규약 |
| `git-workflow` | 커밋 메시지, 브랜치 네이밍 등 Git 컨벤션 관리 |
| `github-workflow` | GitHub 이슈 기반 개발 워크플로우 자동화 |
| `project-analyzer` | 프로젝트 구조 일관성 및 문서 품질 자동 분석 |

**기술 스택 플러그인** (프로젝트에 따라 선택):
| 플러그인 | 설명 |
|---------|------|
| `backend` | FastAPI RESTful API 개발 에이전트 |
| `data-engineering` | Apache Airflow DAG 개발 에이전트 |

사용자에게 어떤 플러그인을 설치할지 물어보세요.
선택이 끝나면 선택한 플러그인을 하나씩 설치하세요:

```
/plugin install <plugin-name>@hoonse-claude-plugins
```

### 3단계: 셋업 완료 처리

플러그인 설치가 끝나면 셋업 완료 마커 파일을 생성하세요:

```bash
touch .claude/.setup-complete
```

이 마커 파일이 있으면 다음 세션부터 셋업 안내 메시지가 표시되지 않습니다.

### 4단계: 설치 확인

결과를 요약해서 보여주세요:
- 설치된 플러그인 목록
- 건너뛴 플러그인 목록 (있다면)
- 사용 가능한 스킬과 에이전트 안내

## 참고 사항

- `github-workflow`는 `git-workflow`에 의존합니다. `github-workflow`를 설치하려면 `git-workflow`도 함께 설치해야 합니다.
- 불필요한 기술 스택 플러그인은 설치하지 않아도 됩니다.
- 설치 후 `/plugin` 명령으로 플러그인 상태를 확인할 수 있습니다.