function linuxhere --description 'Runs linux in the current directory'
	set distro "aybabtme/linuxhere:latest"
	if test $argv[1]
		set distro $argv[1]
	end
	echo -e "\x1b[1;94mRunning \x1b[0;1;3;4;96m$distro\x1b[0;1;94m here!\x1b[0m"
	docker run --hostname (hostname)"-on-linux" -v /:/there/ --workdir /there/(pwd) -i -t $distro  /bin/bash
end
