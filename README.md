# qb-core

### [Official QBCore Documentation](https://docs.qbcore.org)

# License

    QBCore Framework
    Copyright (C) 2015-2022 ESX (Jérémie N'gadi), Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>


### 修正箇所
| ファイル | 問題 | 影響 |
| -------------------- | ----------------------- | ---------- |
| client/loops.lua | 未ログイン時 Wait(0) | 毎フレームCPU浪費 |
| client/loops.lua | hunger loop 非効率 | 毎フレーム無駄処理 |
| client/functions.lua | GetClosestPlayer 二重ループ | プレイヤー数倍の処理 |
| server/player.lua | PaycheckInterval の return バグ | 給料システム停止 |
| client/functions.lua | GetPlayersFromCoords 最適化 | 軽微 |
| shared/vehicles.lua | 起動時500件ハッシュ | 起動時のみ |
| server/commands.lua | tostring キャッシュ | 軽微 |
| client/events.lua | string.len 毎フレーム | 極軽微 |
