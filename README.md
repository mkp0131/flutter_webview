# web_view

## [flutter] 외부 패키지 설치

- `https://pub.dev/` 에서 패키지 검색
- `pubspec.yaml` 파일에 설치할 패키지를 넣어준다.
- 수정이 완료되었다면 `pub get` 을 해주면 끝!
- 패키지별로 `android` 혹은 `ios` 폴더에 추가 설정이 필요 할 수 있다.


## [flutter] 타입 체크 null 이 아니라는 것 확실하게 표현

- '!' 를 붙여준다.

```dart
IconButton(onPressed: () {
    if (controller == null) {
      return;
    }
    controller!.loadUrl(homeUrl);
}
```