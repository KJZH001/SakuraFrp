@echo ������ʼ����
pause

:Windows

@echo ����windowsƽ̨
go build -o ./frpc_windows_386.exe
@echo windowsƽ̨�������

::����Linuxƽ̨
goto NoLinux

:linux amd64

@echo ����linux amd64ƽ̨
::����CGO
set CGO_ENABLED=0
::Ŀ�괦�����ܹ���amd64
set GOARCH=amd64
::Ŀ��ƽ̨��linux
set GOOS=linux
@echo α�컷��������ϣ���ʼ����
go build -o ./frpc_linux_amd64
@echo linux amd64ƽ̨�������

::����Armƽ̨
goto NoArm

:linux arm

@echo ����linux arm64ƽ̨
::����CGO
set CGO_ENABLED=0
::Ŀ�괦�����ܹ���arm
set GOARCH=arm
::Ŀ��ƽ̨��linux
set GOOS=linux
@echo α�컷��������ϣ���ʼ����
go build -o ./frpc_linux_arm
@echo linux amd64ƽ̨������

:linux arm64

@echo ����linux arm64ƽ̨
::����CGO
set CGO_ENABLED=0
::Ŀ�괦�����ܹ���arm64
set GOARCH=arm64
::Ŀ��ƽ̨��linux
set GOOS=linux
@echo α�컷��������ϣ���ʼ����
go build -o ./frpc_linux_arm64
@echo linux amd64ƽ̨�������

:NoLinux
@echo �ѽ���Linuxƽ̨����

:NoArm
@echo �ѽ���Armƽ̨����

:End
@echo ��������ִ�����

pause

