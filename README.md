## 일러두기
> 아래의 내용은 이 프로젝트에 대한 **현재까지**의 개발 방법에 대한 설명입니다.

## 프로젝트 스택
이 프로젝트는 다음 스택을 기반으로 운영됩니다.
### [GitHub Pages](https://pages.github.com/)
GitHub Repo의 특정브랜치를 자동으로 빌드하고 호스팅하는 시스템입니다.
* [여기](https://github.kakaocorp.com/ailab-papers/ailab-papers.github.kakaocorp.com/settings)에서 관련 설정을 볼 수 있습니다.
* 이 프로젝트는 `ailab-papers` Organization의 User page입니다. 그래서 `ailab-papers.github.kakaocorp.com` 라는 Repo 이름을 가집니다. User page로 Repo를 개설하면 다음과 같은 위치에 게시되어 깔끔합니다. `https://pages.github.kakaocorp.com/{User(Organization)}/`
* Gihub Pages는 자동 빌드 기능은 간편하지만, Jekyll plugin 추가에 제한이 있습니다. [링크](https://jekyllrb.com/docs/plugins/installation/) 😢 꼭 필요한 plugin이 있다면, 별도의 빌드 파이프라인을 구축한 후 (로컬 빌드 또는 [Travis CI](https://docs.travis-ci.com/user/deployment/pages/) 활용) 해당 내용을 Github Pages로 Push해 서빙하거나, 아예 별도의 서빙 환경을 구축하는 방법을 사용해야 합니다.

### [Jekyll](https://jekyllrb.com/)
[Markdown](https://daringfireball.net/projects/markdown/)과 [Liquid template](https://github.com/Shopify/liquid/wiki)으로 작성한 파일들로 정적 웹사이트나 블로그를 구축하는 도구입니다.

### [Tale theme](https://github.com/chesterhow/tale)
이 프로젝트가 사용하는 Jekyll theme입니다. 일부 설정과 스타일을 커스텀하여 사용하고 있습니다.

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
├── papers // 논문자료 포스트
│   ├── _posts
│   └── index.html
├── serve.sh // 로컬 렌더링 스크립트
└── techlog // 테크로그 포스트
    ├── _posts
    └── index.html
```

## 로컬 렌더링 환경 구축
> 환경을 구축하는 여러 방법 중 하나이고, 제게 가장 간편했던 방법이라 소개합니다.

1. Docker 설치 ([Mac](https://docs.docker.com/docker-for-mac/install/))
2. Repo 클론
```sh
git clone https://github.kakaocorp.com/ailab-papers/ailab-papers.github.kakaocorp.com.git papers
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

## Remote push 후 결과 확인하기
작업내용을 commit하고 origin/master에 push하면 https://pages.github.kakaocorp.com/ailab-papers/ 에서 결과를 확인할 수 있습니다.

내용이 약 1분 후에도 반영되지 않는다면, 빌드 실패를 의심해볼 수 있습니다. 빌드가 실패하는 경우, GitHub Enterpirse 계정과 연결된 이메일 주소로 다음과 같은 이메일을 수신합니다. (경험담 😭 )
```
The page build failed for the `master` branch with the following error:

The tag `katexmm` on line 26 in `/data/user/tmp/pages/page-build-18957/_posts/2020-06-14-200614-1.md` is not a recognized Liquid tag. For more information, see https://help.github.com/enterprise/2.21/user/en/github/working-with-github-pages/troubleshooting-jekyll-build-errors-for-github-pages-sites#unknown-tag-error.
```

로컬에서 빌드가 되더라도, GitHub Enterprise 빌드환경과 차이가 나는 부분에서는 빌드에 실패하기도 합니다.

## 기타 사항
(현행 프로젝트 스택을 유지해 개발하시는 경우) Jekyll 빌드구조와 Liquid 템플릿이 어느정도 익숙해지면 기본적인 html/css/js 문제로 귀결되어 어렵지 않게 개발하실 수 있을 거라 생각합니다. 커스텀 include 컴포넌트(이미지, 유튜브) 나 KaTeX 문법 렌더링을 도입한 히스토리는 [이슈](https://github.kakaocorp.com/ailab-papers/ailab-papers.github.kakaocorp.com/wiki)에서 찾아보실 수 있습니다. 🙂
