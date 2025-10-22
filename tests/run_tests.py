#!/usr/bin/env python3
"""
Systems Administration Toolkit - Test Runner
"""

import os
import sys
import platform
from datetime import datetime

def main():
    print("=" * 60)
    print("Systems Administration Toolkit - Test Runner")
    print("=" * 60)
    print(f"Test Time: {datetime.now()}")
    print(f"Platform: {platform.system()} {platform.release()}")
    print(f"Python: {sys.version.split()[0]}")
    print()
    
    # Test project structure
    print("Testing project structure...")
    
    required_dirs = [
        "linux", "macos", "windows", "cross-platform", 
        "monitoring", "tests", "docs"
    ]
    
    missing_dirs = []
    for dir_name in required_dirs:
        if os.path.exists(dir_name):
            print(f" {dir_name}/")
        else:
            print(f" {dir_name}/ - Missing")
            missing_dirs.append(dir_name)
    
    print()
    
    # Test key files
    print("Testing key files...")
    
    key_files = ["README.md", "requirements.txt", ".gitignore"]
    missing_files = []
    
    for file_name in key_files:
        if os.path.exists(file_name):
            size = os.path.getsize(file_name)
            print(f" {file_name} ({size} bytes)")
        else:
            print(f" {file_name} - Missing")
            missing_files.append(file_name)
    
    print()
    
    # Summary
    if not missing_dirs and not missing_files:
        print(" SUCCESS: All required components are present!")
        print(" Systems Administration Toolkit is ready!")
        return True
    else:
        print(" ISSUES FOUND:")
        if missing_dirs:
            print(f"   Missing directories: {', '.join(missing_dirs)}")
        if missing_files:
            print(f"   Missing files: {', '.join(missing_files)}")
        return False

if __name__ == "__main__":
    success = main()
    sys.exit(0 if success else 1)
