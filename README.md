# Godot Mono Steam Playtime Patch

## Overview
This repository provides a patch script and pre-built executable to enable **Steam playtime tracking for Godot Mono builds**.  
By replacing the default Godot executable in Steam with the patched version, Steam will correctly record playtime when using the Mono console build.

---

## How to Use

### 1. Download the Script
Clone or download this repository to get the batch script (`.bat`).

### 2. Convert Script to Executable
Use Bat To Exe Converter (64-bit):  
https://github.com/l-urk/Bat-To-Exe-Converter-64-Bit/releases  

- **Recommended:** choose the **non-console version** when converting, so Steam does not open an extra console window.  
- The resulting file should be named `godot.windows.opt.tools.64.exe`.

Alternatively, you can download the pre-built `godot.windows.opt.tools.64.exe` from the release.

### 3. Replace Steam Godot Executable
Locate your Steam installation folder for Godot (usually under `steamapps/common/Godot Engine`).  
- Backup the original `godot.windows.opt.tools.64.exe`.  
- Replace it with the newly built `godot.windows.opt.tools.64.exe` from step 2.

### 4. Configure Steam Launch Options
In Steam, open **Properties → General -> Launch Options** for Godot and add the path to your Mono console build.

⚠️ Steam automatically passes `-p` as the first argument.  
- The script ignores `%~1` (`-p`) and uses `%~2` as the actual path argument.  
- Therefore, you only need to provide the Godot path in Steam’s launch options.

### 5. Run Godot via Steam
Now, when you launch Godot from Steam:  
- The patched exe will locate `Godot*_stable_mono_win64_console.exe` in the provided path.  
- It will start the Mono console build and wait until it exits.  
- Steam will correctly track your playtime.

