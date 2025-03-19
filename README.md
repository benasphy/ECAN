# Project ECAN

## Overview
This project includes significant improvements in modularity, error handling, and maintainability. The following files have been updated or newly introduced to enhance the system's functionality.

---

## Key Improvements

### **Main Enhancements in `main.py`**
✅ **Removed `sys.path.append`** → Now relies on proper module imports.
✅ **Refactored Agent Registration into a Separate Function** → More modular and maintainable.
✅ **Fixed Infinite Loop Issue** → Runs `scheduler.run_continuously()` only once.
✅ **Better Exception Handling** → Uses `finally` to ensure cleanup.
✅ **More Readable `agent_paths` Dictionary** → Improves maintainability.

---

### **Enhancements in `agent_base.py`**
#### **Threading Concerns**
- The `StreamMethod` class spawns a new thread for each method call but lacks proper thread management, which could lead to resource leaks.
- There is no mechanism to stop or join the threads properly.

#### **Agent Object Initialization Issues**
- The `_init_metta` method now properly handles cases where `_metta` is already initialized.
- `_load_code` validates if `_metta` is correctly set before execution.

#### **Error Handling**
- The `run` method now catches unexpected cases where `_code` might not be properly set or loaded.

#### **Code Readability and Maintainability**
- Reduced nested conditionals to improve readability.
- Separated class responsibilities more clearly (agent management, execution, and threading).

---

### **Improvements in `ParallelScheduler.py`**
✅ **Better Error Handling** – Wraps agent creation and execution in `try-except` blocks.
✅ **Thread Management** – Uses a fixed number of worker threads for efficiency.
✅ **Execution Monitoring** – Logs agent execution results and errors.
✅ **Prevents Excessive CPU Usage** – Adds a short `time.sleep(1)` delay.

---

## **New Additions**

### **`logger.py`**
📌 **Purpose:** Create a logging utility to record system events and errors.
- Logs system activities for better debugging.
- Centralized logging management for easier maintenance.

### **`visualization.py`**
📌 **Purpose:** Develop functions to plot attention data, facilitating the analysis of attention shifts and patterns.
- Helps in visualizing agent behaviors over time.
- Supports multiple graphing methods for better insights.

### **`config.py`**
📌 **Purpose:** Introduce a centralized configuration system to manage application settings.
- Allows easy modifications to system-wide settings.
- Reduces hardcoded values in the main code.

---

## **Installation & Usage**
1. Clone the repository:
   ```bash
   git clone https://github.com/benasphy/ECAN.git
   cd ECAN
   ```

2. Install dependencies:
   ```bash
   pip install -r requirements.txt
   ```

3. Run the main program:
   ```bash
   python main.py
   ```

---

## **Contributions & Future Work**
- Improve thread handling in `agent_base.py`.
- Add more detailed logging and debugging tools.
- Optimize scheduler performance for larger workloads.
- Enhance visualization capabilities for better analytics.

---

🚀 **Happy Coding!**

