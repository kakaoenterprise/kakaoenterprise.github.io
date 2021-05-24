# kakaoenterprise.github.io

## 프로젝트 스택
이 프로젝트는 다음 스택을 기반으로 운영됩니다.

### [GitHub Pages](https://pages.github.com/)
GitHub Repo의 특정 브랜치를 자동으로 빌드하고 호스팅하는 시스템입니다.
* [여기](https://github.com/kakaoenterprise/kakaoenterprise.github.io/settings)에서 관련 설정을 볼 수 있습니다.
* 이 프로젝트는 `kakaoenterprise` Organization의 User page입니다. 그래서 `kakaoenterprise.github.io` 라는 Repo 이름을 가집니다. 
* Gihub Pages는 자동 빌드 기능은 간편하지만, Jekyll plugin 추가에 제한이 있습니다. [링크](https://jekyllrb.com/docs/plugins/installation/) 😢 꼭 필요한 plugin이 있다면, 별도의 빌드 파이프라인을 구축한 후 (로컬 빌드 또는 [Travis CI](https://docs.travis-ci.com/user/deployment/pages/) 활용) 해당 내용을 Github Pages로 Push해 서빙하거나, 아예 별도의 서빙 환경을 구축하는 방법을 사용해야 합니다.
* 이 프로젝트는 Jekyll Custom Plugin을 사용하기 위해 로컬 빌드를 하고 /docs 디렉토리에 배포하는 방식을 사용합니다.

### [Jekyll](https://jekyllrb.com/)
[Markdown](https://daringfireball.net/projects/markdown/)과 [Liquid template](https://github.com/Shopify/liquid/wiki)으로 작성한 파일들로 정적 웹사이트나 블로그를 구축하는 도구입니다.

### [Tale theme](https://github.com/chesterhow/tale)
이 프로젝트가 사용하는 Jekyll theme입니다. 일부 설정과 스타일을 커스텀해 사용하고 있습니다.

## 프로젝트 구조
```sh
.
├── _config.yml // site 설정
├── _data // 데이터 디렉토리, {% assign krew_data = site.data.krews[id] %} 와 같이 사용.
├── _includes // 여러 post에서 공통으로 사용할 컴포넌트 정의
├── _layouts // post, page 레이아웃 정의
├── _pages
│   └── 404.html
├── _sass // 스타일 정의
│   └── tale // 테마 기본 스타일
├── assets
│   ├── img // 포스트 별 이미지
│   └── profile // 크루 별 프로필 이미지
├── index.html
├── papers // 논문소개 포스트
│   ├── _posts
│   └── index.html
├── serve.sh // 로컬 렌더링 스크립트
├── build.sh // 프로덕션 빌드 스크립트
├── docs // 프로덕션 빌드 output directory
└── deepdive // 딥다이브 포스트
    ├── _posts
    └── index.html
```

## 로컬 렌더링 환경 구축
> 환경을 구축하는 여러 방법 중 하나이고, 제게 가장 간편했던 방법이라 소개합니다.

1. Docker 설치 ([Mac](https://docs.docker.com/docker-for-mac/install/))
2. Repo 클론
```sh
git clone https://github.com/kakaoenterprise/kakaoenterprise.github.io.git papers
cd papers
```
3. 빌드 & 서빙

<details>
<summary>자세히 보기</summary>

```sh
./serve.sh
Fetching gem metadata from https://rubygems.org/..........
Fetching gem metadata from https://rubygems.org/.
Resolving dependencies...
Fetching rake 12.3.3
Installing rake 12.3.3
Fetching public_suffix 4.0.6
Installing public_suffix 4.0.6
Fetching addressable 2.7.0
Installing addressable 2.7.0
Using bundler 2.0.2
Fetching colorator 1.1.0
Installing colorator 1.1.0
Fetching concurrent-ruby 1.1.8
Installing concurrent-ruby 1.1.8
Fetching eventmachine 1.2.7
Installing eventmachine 1.2.7 with native extensions
Fetching http_parser.rb 0.6.0
Installing http_parser.rb 0.6.0 with native extensions
Fetching em-websocket 0.5.2
Installing em-websocket 0.5.2
Fetching ffi 1.15.0
Installing ffi 1.15.0 with native extensions
Fetching forwardable-extended 2.6.0
Installing forwardable-extended 2.6.0
Fetching i18n 1.8.10
Installing i18n 1.8.10
Fetching sassc 2.4.0
Installing sassc 2.4.0 with native extensions
^CFetching jekyll-sass-converter 2.1.0
Installing jekyll-sass-converter 2.1.0
Fetching rb-fsevent 0.10.4
Installing rb-fsevent 0.10.4
Fetching rb-inotify 0.10.1
Installing rb-inotify 0.10.1
Fetching listen 3.5.1
Installing listen 3.5.1
Fetching jekyll-watch 2.2.1
Installing jekyll-watch 2.2.1
Fetching rexml 3.2.5
Installing rexml 3.2.5
Fetching kramdown 2.3.1
Installing kramdown 2.3.1
Fetching kramdown-parser-gfm 1.1.0
Installing kramdown-parser-gfm 1.1.0
Fetching liquid 4.0.3
Installing liquid 4.0.3
Fetching mercenary 0.4.0
Installing mercenary 0.4.0
Fetching pathutil 0.16.2
Installing pathutil 0.16.2
Fetching rouge 3.26.0
Installing rouge 3.26.0
Fetching safe_yaml 1.0.5
Installing safe_yaml 1.0.5
Fetching unicode-display_width 1.7.0
Installing unicode-display_width 1.7.0
Fetching terminal-table 2.0.0
Installing terminal-table 2.0.0
Fetching jekyll 4.2.0
Installing jekyll 4.2.0
Fetching jekyll-feed 0.15.1
Installing jekyll-feed 0.15.1
Fetching jekyll-paginate 1.1.0
Installing jekyll-paginate 1.1.0
Fetching jekyll-seo-tag 2.7.1
Installing jekyll-seo-tag 2.7.1
Using tale 0.2.1 from source at `.`
Bundle complete! 3 Gemfile dependencies, 33 gems now installed.
Bundled gems are installed into `/usr/local/bundle`
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-linux-musl]
Configuration file: /srv/jekyll/_config.yml
            Source: /srv/jekyll
       Destination: /srv/jekyll/_site
 Incremental build: disabled. Enable with --incremental
      Generating...
       Jekyll Feed: Generating feed for posts
                    done in 8.379 seconds.
 Auto-regeneration: enabled for '/srv/jekyll'
    Server address: http://0.0.0.0:4000
  Server running... press ctrl-c to stop.
```
</details>

4. 브라우저에서 http://localhost:4000 접속해 렌더 결과를 확인합니다.
5. 포스트를 수정합니다.
6. 브라우저에서 새로고침하면 수정 반영된 내용을 볼 수 있습니다. 4~5을 반복합니다.
7. 더이상 수정할 내용이 없으면 ./build.sh 스크립트를 실행해서 docs에 production build 결과를 저장합니다.

## Remote push 후 결과 확인하기
작업내용을 commit하고 origin/master에 push하면 https://kakaoenterprise.github.io 에서 결과를 확인할 수 있습니다.
이 때 Settings에서 Pages의 Source 위치는 master branch의 /docs folder로 설정되어 있어야 합니다.

내용이 반영되기까지 몇분이 걸릴 수도 있습니다. 새로고침을 해도 반영이 되지 않는다면, 강제 새로고침을 통해서 저장된 페이지를 삭제해 봅니다.
크롬 브라우저의 경우 단축키(Winodws: ctrl+shift+r, Mac: cmd+shift+r)를 통해서 강제 새로고침을 할 수 있습니다.

## 기타 사항
(현행 프로젝트 스택을 유지해 개발하시는 경우) Jekyll 빌드구조와 Liquid 템플릿이 어느정도 익숙해지면 기본적인 html/css/js 문제로 귀결되어 어렵지 않게 개발할 수 있습니다.

# License
This software is licensed under the Apache 2 license, quoted below.

Copyright 2021 Kakao Enterprise Corp. http://www.kakaoenterprise.com

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this project except in compliance with the License. You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

# Contact

tsp@kakaoenterprise.com
