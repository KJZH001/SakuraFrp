@echo ������ʼ����
pause

:Windows

@echo ����windowsƽ̨
go build -o ./frps_windows_386.exe
@echo windowsƽ̨�������

:linux amd64

@echo ����linux amd64ƽ̨
::����CGO
set CGO_ENABLED=0
::Ŀ�괦�����ܹ���amd64
set GOARCH=amd64
::Ŀ��ƽ̨��linux
set GOOS=linux
@echo α�컷��������ϣ���ʼ����
go build -o ./frps_linux_amd64
@echo linux amd64ƽ̨�������

:linux arm

@echo ����linux arm64ƽ̨
::����CGO
set CGO_ENABLED=0
::Ŀ�괦�����ܹ���arm
set GOARCH=arm
::Ŀ��ƽ̨��linux
set GOOS=linux
@echo α�컷��������ϣ���ʼ����
go build -o ./frps_linux_arm
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
go build -o ./frps_linux_arm64
@echo linux amd64ƽ̨�������

@echo ��������ִ�����

pause

