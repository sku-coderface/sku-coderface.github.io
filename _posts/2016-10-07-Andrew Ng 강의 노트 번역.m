---
layout: post
title: Embedded Quiz paper
author: cineraria219
---

최근 Andrew Ng의 강의를 보기 시작했다. 물론 한글이 없기에 속도는 몇 배고 차이나지만 이건 내가 자발적으로 공부하는 것이기에 급할 게 없다. 따라서 그것을 정리하신 분의 노트를 번역함과 동시에 내 나름대로 정리해보고자 한다. 미비한 영어실력이지만 나름대로 의역해볼 터이니 실력있는 분들은 오역이 있다면 지적해주시길 바랍니다.

[원본](http://www.holehouse.org/mlclass/01_02_Introduction_regression_analysis_and_gr.html)

#01, 02 : 소개, 회선 분석, 그리고 경사 감소법

## < 강의 소개 >
* 우리가 배울 것
     * State of the art
     * 어떻게 구현 하는가?

* 머신러닝 프로그램이 구현하는 예
     * 검색
     * 사진 태그
     * 스팸 차단

* 사람처럼 기계에 지능을 구현하는 인공지능의 미래
     * 많은 이들이 사람을 흉내 내는 것이 최고의 방법이라 믿는다.

* 강의가 주를 이루는 것들
     * state of the art algorithms에 대해 배운다.
     * 하지만 알고리즘과 수학만 배우는 건 좋지 않다.
     * 문제 속에서 어떻게 동작하게 하는 지 배울 필요가 있다.

* ML(Machine Learning)이 왜 대세인가?
     * AI의 성장
     * 지능을 가진 기계를 만들 수 있다
          * 기계가 간단한 작업을 어떻게 해야할 지 프로그램할 수 있다.
               * 대부분 part hard-wiring AI는 너무 어렵다.
          * 기계 스스로 학습할 수 있는 방법을 갖게 해주었다.
               * 학습을 위한 메카니즘 - 기계가 입력으로부터 배우고 당신에겐 어려운 일들을 할 수 있다.

###  예시
* 데이터 마이닝
     * 머신러닝은 아주 많은 양의 데이터들이 계속 등장하면서 큰 부분을 차지하고 있다.

     * 웹의 성장으로 생긴 많은 양의 데이터

     * 여기서 데이터는 다음과 같은 것들이다.
          * 웹 데이터 (click-stream or click through data)
               * 유저가 선호하는 것들을 이해하기 위한 마이닝
               * 실리콘 밸리의 거대한 조각(Huge segment)

          * 의학 기록
               * 전자적 기록 -> 지식을 기록으로 바꾸기

          * 생체학적 데이터
               * 유전자 시퀀스(sequences), ML 알고리즘이 인간의 게놈(genome)을 더 이해할 수 있게 해준다.

          * 공학 정보
               * 센서, log 기록, 사진 등으로부터의 데이터

* 우리가 손으로 프로그래밍할 수 없는 것들
     * 자동조종 헬리콥터
     
     * 손글씨 인식
          * 이것은 매우 경제적이다. 왜냐하면 봉투에 썼을 때 알고리즘은 봉투를 우편을 자동적으로 보낼 수 있기 때문이다.
          
     * 자연어 처리 (NLP)
          * 언어와 관련된 AI
          
     * 컴퓨터 비전
          * 비전과 관련된 AI
          
* 스스로 커스터마이징 하는 프로그램
     * Netflix
     * Amazon
     * iTunes genius
     * 유저 정보를 가져온다
          * 행동을 기반으로 배운다.
          
* 인간이 학습하는 방법과 뇌를 이해할 수 있다.
     * 만일 뇌가 하는 일과 유사하게 흉내내거나(그러려고 노력하는) 시스템을 만든다면, 신경생물학과 관련된 것들을 더 이해하게 해줄 것이다.

## 머신 러닝이란?
               
