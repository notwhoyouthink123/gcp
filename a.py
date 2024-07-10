import os
import subprocess
import tempfile
import zipfile
import shutil
from pyrogram import Client, filters

# Bot token from BotFather
api_token = "7062513673:AAHACEkfFVbG-gfdUkHFGLEEAa5ZPERNXRc"
api_id= "18994068"
api_hash = "8afced1e868e2ac44dbb9eeab5c534ce"

app = Client("my_bot", api_id=api_id, api_hash=api_hash, bot_token=api_token)

# Function to check if the custom ipsw binary exists
def check_ipsw_exists():
    if not os.path.isfile("./ipsw_Linux_x86_64"):
        print("ipsw binary could not be found. Please place 'ipsw_Linux_x86_64' in the current directory.")
        exit(1)

# Function to class dump the executable and frameworks
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
        exit(1)

    info_plist_path = os.path.join(app_dir, 'Info.plist')
    with open(info_plist_path, 'rb') as f:
        plist = plistlib.load(f)
        executable = plist.get('CFBundleExecutable')

    frameworks_dir = os.path.join(app_dir, 'Frameworks')

    # Class dump the executable
    executable_path = os.path.join(app_dir, executable)
    subprocess.run(["./ipsw_Linux_x86_64", "class-dump", executable_path, "-o", os.path.join(output_dir, f"{executable}_dump"), "--headers"])

    # Class dump each framework
    if os.path.isdir(frameworks_dir):
        for framework in os.listdir(frameworks_dir):
            if framework.endswith(".framework"):
                framework_executable = framework.split(".")[0]
                framework_executable_path = os.path.join(frameworks_dir, framework, framework_executable)
                subprocess.run(["./ipsw_Linux_x86_64", "class-dump", framework_executable_path, "-o", os.path.join(output_dir, f"{framework_executable}_dump"), "--headers"])

    return output_dir
    
@bot.on_message(filters.command("start"))
async def handleStart(client, message):
    await message.reply_text("I am Alive 🥰🥰")

# Telegram bot handler
@app.on_message(filters.document)
async def handle_document(client, message):
    # Check if the received document is an IPA file
    if not message.document.file_name.endswith(".ipa"):
        await message.reply_text("Please send an IPA file.")
        return

    # Download the IPA file
    download_path = await message.download()
    output_dir = tempfile.mkdtemp()

    try:
        # Perform class dump
        class_dump_dir = class_dump_ipa(download_path, output_dir)

        # Zip the output directory
        zip_path = f"{class_dump_dir}.zip"
        shutil.make_archive(class_dump_dir, 'zip', class_dump_dir)

        # Send the zipped output back to the user
        await client.send_document(message.chat.id, zip_path)
    finally:
        # Clean up temporary files
        os.remove(download_path)
        shutil.rmtree(output_dir)
        if os.path.exists(zip_path):
            os.remove(zip_path)

# Check for ipsw binary
check_ipsw_exists()

# Run the bot
app.run()