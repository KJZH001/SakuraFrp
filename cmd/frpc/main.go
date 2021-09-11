// Copyright 2016 fatedier, fatedier@gmail.com
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
	_ "github.com/fatedier/frp/assets/frpc/statik"
	"github.com/fatedier/frp/cmd/frpc/sub"

	"github.com/fatedier/golib/crypto"
)

func main() {
	crypto.DefaultSalt = "frp"
	log.Info("frpc Version 0.28.2 MoeWorld Build")
	log.Info("基于Sakura Frpc 二次开发 by 晓空")
	log.Info("空梦云 Frp客户端 正在启动...")
	sub.Execute()
}
