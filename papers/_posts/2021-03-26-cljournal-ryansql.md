---
layout: post
research-area: NLP
title: "RYANSQL: Recursively Applying Sketch-based Slot Fillings for Complex Text-to-SQL in Cross-Domain Databases"
slug: cljournal2021-ryansql
description: "중첩된 SELECT문을 좀 더 정확하게 생성하는 SPC 기법을 적용한 Text-to-SQL 알고리즘 'RYANSQL' 제안"
published-date: 2021-03-26
publisher: Computational Linguistics
authors:
  - heuristic:카카오엔터프라이즈
  - index:카카오엔터프라이즈
  - jason:카카오엔터프라이즈
  - 신동렬:성균관대학교
paper: https://watermark.silverchair.com/coli_a_00403.pdf?token=AQECAHi208BE49Ooan9kkhW_Ercy7Dm3ZL_9Cf3qfKAc485ysgAAAqswggKnBgkqhkiG9w0BBwagggKYMIIClAIBADCCAo0GCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMhNgWBGfL-T4c1yi3AgEQgIICXhq7kkz5ahmvFpo52y9gQvr7abDW6ffiXRx1YWMkKMHFoPk67ta63WSCae1_BcW_3UKkG78vcsZe3Mis2BhYt9k-5umWsWlGbIB5Xwd7QYF7ckaaRsrLV0-p1wedcH0WcWcwJf1P-gaxwY_SVewAvmHF_66sbWmHeD6axVgjpgpPO0eJGFOztl1wigRXNYoEGy6x0f3In9r0Eoky5Y6z5ZHWq7mgUsYeqRvK3LY_YQhjJH20fBzBRmvpTNFm6iILnifF3zHcPwmLF78WAv_qwOQKoUXYFtsMAD-2PNJOm2GJmOSItdH2bsosXGHc5IGKrm2b2r4koqBGr69yudAbCY-rAq4cT70Stk40J4vR5krXX6QyEk_UMHXe_D1t0dmAyrrGixoBgPxIlUeOa5SmwlddSx50FnLfKXlCzqM9hBlkKHwiRhY0PMs0dNlfArvl4nbB-UY29xWjdNNdoruhNcXGxcPU_yX8s4bHprRLiStrPFv6AnfTVK-Sr6dQNs_HWUNTkF3rbiBOQcYH-ATeQGvwNbNnEO_7XXkiJ7AMMqACIeNaDSOLIBuBRsJ0eLkNUkZ7ZJVcqst0rolsZN9WQNov37VzfuKV2KScfC_hgt3w6_eMH7x7ukJ-NnTakTW4WBPP5L9MW3n9wKWbpya0xi_XG9Yqxyc5Kj39EzntqqnsFatOPWkzVU2MOpA0rSlD8PD-fTYYgdkuJOkOpnoQ-9cKqEIFyLXtLTRKS7qgCvvAPbAV_MsOolmN7snV7AhF9uXETtHR7CxU6oqa1rKUyHVDav_1BRqnWtxSUiPjKw
code: https://github.com/kakaoenterprise/RYANSQL
tag:
  - NLI2DB
  - Text-to-SQL
---

스파이더 챌린지<sup>SPIDER Text-to-SQL Challenge</sup> 성과를 정리한 공동 연구 논문이 Computational Linguistics에 실렸습니다. 미국 예일대학교에서 주최한 스파이더 챌린지는 각종 데이터를 정리∙보관할 때 사용하는 데이터베이스와 자연어 형태의 사용자 질의가 주어졌을때, 이 질의문을 SQL<sup>Structured Query Language</sup>[^1]문으로 변환해주는 Text-to-SQL[^2] 알고리즘의 정확도를 평가합니다.

[^1]: 관계형 데이터베이스 관리를 위해 설계된 특수목적의 프로그래밍 언어
[^2]: NLI2DB<sup>natural language interface to databases</sup>라고도 부른다.

{% include image.html name="001.png" align="center" %}
<em class="center">[ 표 1 ] 주어진 자연어 문장과 데이터베이스를 이용해 SQL 문을 생성하는 예시</em>

자연어 질의문을 SQL 문으로 변환하는 데에는 스케치 기반 슬롯 채우기<sup>sketch-based Slot Filling</sup>가 주로 활용돼 왔습니다. SELECT[^3] 문에 몇 개의 열<sup>column</sup>을 입력해야 하는지, 어떤 열을 선택해야 하는지, 집계 함수<sup>aggregator</sup>[^4]로 무엇을 써야 하는지 등 판별해야 할 정보<sup>slot</sup>를 먼저 구분하고 나서, 각 정보의 값을 채워넣는 식입니다. 다만 이 방식으로는 쿼리 속에 또 다른 쿼리가 든 중첩 질의<sup>nested query</sup>를 생성하는 데 한계가 있습니다. SELECT 문의 개수가 정해지지 않아서 전체 설계도 자체를 그릴 수 없기 때문입니다.

[^3]: 테이블 전체 또는 일부 열과 행 값을 호출하는 명령어
[^4]: 값 집합에 대한 산술적인 계산(레코드의 수, 값의 합, 값의 평균, 최대값, 최소값)의 결과값을 출력한다.

공동 연구팀이 제안한 Text-to-SQL 알고리즘인 RYQNSQL<sup>Recursively Yielding Annotation Network for SQL</sup>은 대규모 영어 비라벨링 말뭉치를 사전학습한 언어 모델인 BERT에 자체 고안한 SPC<sup>Statement Position Code</sup> 기법을 적용했습니다. SPC는 슬롯을 채울 때 중첩된 SELECT문을 좀 더 정확하게 생성할 수 있도록 합니다. 실험 결과, 스파이더 벤치마크 데이터셋에 대해 현재 최고 성능의(SOTA)[^5] 모델보다 3.2%p 더 높은 58.2%의 정확도를 달성했습니다.

[^5]: 논문 제출 시점(2020년 4월) 최고 성능

카카오엔터프라이즈는 데이터의 스키마(테이블 이름, 열 이름)뿐만 아니라 실제 값도 활용하는 방식 등으로 자사 Text-to-SQL 알고리즘의 성능과 사용성을 높여 기업 데이터베이스 활용의 문턱을 낮추는 데 기여할 계획입니다.

<br/>

# Overall Architecture

Figure 1 shows the overall network architecture of the input encoder. The input encoder consists of five layers: Embedding layer, Embedding Encoder layer, Question-Column Alignment layer, Table Encoder layer, and Question-Table Alignment layer. Table 1 shows the proposed sketch for a SELECT statement. The sketch-based slot-filling decoder predicts values for slots of the proposed sketch, as well as the number of slots.

{% include image.html name="002.png" align="center" %}
<em class="center">[ Figure 1 ] Network architecture of the proposed input encoder. S represents self-attention.</em>

{% include image.html name="003.png" width="80%" align="center" %}
<em>[ table 1 ] Proposed sketch for a SELECT statement. $TBL and $COL represent a table and a column, respectively. $AGG is one of {none, max, min, count, sum, avg}, $ARI is one of the arithmetic operators {none, -, +, *, / }, and $COND is one of the conditional operators {between, =, >, <, >=, <=, !=, in, like, is, exists}. $DIST and $NOT are boolean variables representing the existence of keywords DISTINCT and NOT, respectively. $ORD is a binary value for keywords ASC/DESC, and $CONJ is one of conjunctions {AND, OR}. $VAL is the value for WHERE/HAVING condition; $SEL represents the slot for another SELECT statement.</em>

<br/>

# Experiments

Table 2 shows that the proposed system RYANSQL improves the previous sketch-based slot filling system RCSQL by a large margin of 15% on the dev set. Note that the RCSQL fine-tuned another well known pretrained language model ELMo. With the use of BERT, among the systems without database content, the proposed systems (RYANSQL + BERT and RYANSQL v2 + BERT) outperforms the previous state-of-the-art by 2.5% and 4.9% respectively on the hidden test dataset. The proposed system still shows competitive results compared to the systems using database content; RATSQL v3 + BERT outperforms the proposed system by better aligning user questions and database schemas using database content.

{% include image.html name="005.png" width="90%" align="center" %}
<em class="center">[ Table 2 ] Evaluation results of the proposed systems and other state-of-the-art systems.</em>

We evaluated the proposed models on the CSpider dataset. CSpider is a chinese-translated version of the Spider benchmark. Only the question of the spider dataset is translated; database table names and column names remain as English. Evaluation on the CSpider dataset will show if the proposed model could be applied on the different languages, even when the question language and database schema language are different. To handle the case, we used multilingual BERT, which has the same network architecture with BERT-base but is trained using multilingual corpus.

The results are shown in Table 3. Compared to the exact matching accuracy 51.4% of RYANSQL + BERT-base on Spider dataset, the multilingual version shows 10% lower accuracy on dev set, but still shows comparable results to other state-of-the-art systems which are designed for CSpider dataset. Our proposed system showed 34.7% test accuracy on the test set, and ranked at 2nd place on the leaderboard.

{% include image.html name="005.png" width="90%" align="center" %}
<em class="center">[ Table 3 ] Evaluation results on CSpider dataset with other state-of-the-art systems.</em>

<br/>

-----

### Footnotes
