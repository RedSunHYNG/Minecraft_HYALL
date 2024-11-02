tag @a[tag=!nsplayer] add nsplayer
say 已加载新人辅助数据包（低配）。
say 手持调试面板右键打开面板，按T或指定按键打开聊天输入框用鼠标点击相应字体进行操作。
say 意见新加功能请联系作者：红阳。
say 当前数据包全局开放操作，请谨慎加载本数据包，以免存档被熊。
say 新人加载时会重载数据包,作弊下手动输入/tag 名字 add nsoff 来关闭对方后续使用权 .
give @a minecraft:carrot_on_a_stick{display:{Name:'[{"text":"调试面板"}]'},Tags:["nsplayer_key"],Unbreakable:1} 1
scoreboard objectives add nsplayer_use minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add nsplayer_use1 trigger
scoreboard objectives add nsplayer_use2 trigger
scoreboard objectives add nsplayer_use3 trigger
scoreboard objectives add nsplayer_use4 trigger
scoreboard objectives add nsplayer_use5 trigger
gamerule commandBlockOutput false