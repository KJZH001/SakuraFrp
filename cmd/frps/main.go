// Copyright 2018 fatedier, fatedier@gmail.com
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package main

import (
	"github.com/fatedier/golib/crypto"

	_ "github.com/fatedier/frp/assets/frps/statik"
	"github.com/fatedier/frp/utils/log"
)

func main() {
	crypto.DefaultSalt = "frp"
	log.Info("frps Version 0.28.2 MoeWorld Build")
	log.Info("Based on Sakura Frpc Powered by MoeWorld 晓空")
	log.Info(" __  __                ______            ")
	log.Info("|  \\/  |              |  ____|           ")
	log.Info("| \\  / |  ___    ___  | |__  _ __  _ __  ")
	log.Info("| |\\/| | / _ \\  / _ \\ |  __|| '__|| '_ \\ ")
	log.Info("| |  | || (_) ||  __/ | |   | |   | |_) |")
	log.Info("|_|  |_| \\___/  \\___| |_|   |_|   | .__/ ")
	log.Info("                                  | |    ")
	log.Info("                                  |_|    ")
	log.Info("空梦云 Frp服务端 正在启动...")
	log.Info("空梦云 Frp服务端 载入服务端配置信息...")
	Execute()
}
