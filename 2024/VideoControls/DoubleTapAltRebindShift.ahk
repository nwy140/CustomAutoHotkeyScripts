;https://www.reddit.com/r/AutoHotkey/comments/18cg39s/double_pressing_a_key_performs_another_key/?rdt=42673

#Requires AutoHotkey v2.0

~LShift Up::{
    if KeyWait("LShift", "D T0.3") {
        Send "{alt Down}"
    }
    KeyWait "LShift"
}