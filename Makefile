build:
	g++ -g cli/*.cpp src/*.cpp -std=gnu++11 -I src/libs/rapidjson/include -I /usr/local/include -lm -lz -lminizip -lcurl -o get

run_tests:
	rm -rf tests/.get/packages tests/.get/tmp
	g++ -g tests/*.cpp src/*.cpp -std=gnu++11 -I src/libs/rapidjson/include -I /usr/local/include -lm -lz -lminizip -lcurl -o get_tests
	./get_tests
