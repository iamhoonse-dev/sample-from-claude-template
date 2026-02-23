#!/bin/bash

# 셋업 완료 마커 파일 확인
if [ ! -f ".claude/.setup-complete" ]; then
  echo "[hoonse-claude-template] 플러그인이 아직 설치되지 않았습니다. /setup 을 실행하여 초기 셋업을 진행하세요."
fi