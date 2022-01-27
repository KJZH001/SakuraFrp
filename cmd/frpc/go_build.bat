@echo 即将开始编译
pause

:Windows

@echo 编译windows平台
go build -o ./frpc_windows_386.exe
@echo windows平台编译完毕

::跳过Linux平台
goto NoLinux

:linux amd64

@echo 编译linux amd64平台
::禁用CGO
set CGO_ENABLED=0
::目标处理器架构是amd64
set GOARCH=amd64
::目标平台是linux
set GOOS=linux
@echo 伪造环境变量完毕，开始编译
go build -o ./frpc_linux_amd64
@echo linux amd64平台编译完毕

::跳过Arm平台
goto NoArm

:linux arm

@echo 编译linux arm64平台
::禁用CGO
set CGO_ENABLED=0
::目标处理器架构是arm
set GOARCH=arm
::目标平台是linux
set GOOS=linux
@echo 伪造环境变量完毕，开始编译
go build -o ./frpc_linux_arm
@echo linux amd64平台编译完

:linux arm64

@echo 编译linux arm64平台
::禁用CGO
set CGO_ENABLED=0
::目标处理器架构是arm64
set GOARCH=arm64
::目标平台是linux
set GOOS=linux
@echo 伪造环境变量完毕，开始编译
go build -o ./frpc_linux_arm64
@echo linux amd64平台编译完毕

:NoLinux
@echo 已禁用Linux平台编译

:NoArm
@echo 已禁用Arm平台编译

:End
@echo 编译任务执行完毕

pause

