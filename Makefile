.PHONY: all clean build run test open-fleet

all: run

clean:
	flutter clean

get:
	flutter pub get

upgrade:
	flutter pub upgrade

build:
	flutter build apk --release

run:
	flutter run

test:
	flutter test

analyze:
	flutter analyze

format:
	flutter format .

doctor:
	flutter doctor

# 如果你有iOS开发环境，可以加入以下指令
ios-pod-install:
	cd ios && pod install && cd ..

ios-build:
	flutter build ios

# 如果你有Android开发环境，可以加入以下指令
android-build:
	flutter build apk

# 如果你想要指定一个特定的设备来运行Flutter应用
run-on-device:
	flutter run -d $(device)

# 打开Fleet IDE
open-fleet:
	open -a "Fleet" .

