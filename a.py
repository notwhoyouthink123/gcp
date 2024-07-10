import os
import sys
import subprocess
import tempfile
import zipfile
import plistlib

def check_ipsw_exists():
    if not os.path.isfile("./ipsw_Linux_x86_64"):
        print("ipsw binary could not be found. Please place 'ipsw_Linux_x86_64' in the current directory.")
        sys.exit(1)

def class_dump_ipa(ipa_path, output_dir):
    # Create the output directory if it doesn't exist
    os.makedirs(output_dir, exist_ok=True)

    # Extract the IPA
    temp_dir = tempfile.mkdtemp()
    with zipfile.ZipFile(ipa_path, 'r') as zip_ref:
        zip_ref.extractall(temp_dir)

    # Find the executable and frameworks
    app_dir = next((os.path.join(root, d) for root, dirs, files in os.walk(temp_dir) for d in dirs if d.endswith(".app")), None)
    if not app_dir:
        print("Could not find .app directory in the IPA.")
        sys.exit(1)

    info_plist_path = os.path.join(app_dir, 'Info.plist')
    with open(info_plist_path, 'rb') as f:
        plist = plistlib.load(f)
        executable = plist.get('CFBundleExecutable')

    frameworks_dir = os.path.join(app_dir, 'Frameworks')

    # Class dump the executable
    executable_path = os.path.join(app_dir, executable)
    subprocess.run(["./ipsw_Linux_x86_64", "class-dump", executable_path, "-o", os.path.join(output_dir, f"{executable}_dump")])

    # Class dump each framework
    if os.path.isdir(frameworks_dir):
        for framework in os.listdir(frameworks_dir):
            if framework.endswith(".framework"):
                framework_executable = framework.split(".")[0]
                framework_executable_path = os.path.join(frameworks_dir, framework, framework_executable)
                subprocess.run(["./ipsw_Linux_x86_64", "class-dump", framework_executable_path, "-o", os.path.join(output_dir, f"{framework_executable}_dump")])

    # Clean up
    subprocess.run(["rm", "-rf", temp_dir])

    print(f"Class dump completed. Output saved to {output_dir}")

def main():
    # Check for ipsw binary
    check_ipsw_exists()

    # Check if IPA path is provided
    if len(sys.argv) < 3:
        print("Usage: python script.py <path_to_ipa> <output_directory>")
        sys.exit(1)

    ipa_path = sys.argv[1]
    output_dir = sys.argv[2]

    # Run the class dump
    class_dump_ipa(ipa_path, output_dir)

if __name__ == "__main__":
    main()
