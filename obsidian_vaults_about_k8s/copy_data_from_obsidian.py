import os

def copy_directory_contents(source_dir, destination_dir=os.getcwd(), new_name=None):
    """
    Copy the entire contents of the source directory to the destination directory, preserving metadata.
    This function uses system commands for operations and includes error handling and verbose output.
    """
    try:
        # Copying the source directory to the destination directory
        command_copy = f"cp -r {source_dir} {destination_dir}"
        os.system(command_copy)
        print(f"Copied '{source_dir}' to '{destination_dir}'.")

        # If a new name is provided, rename the copied directory
        if new_name is not None:
            final_destination = os.path.join(destination_dir, os.path.basename(source_dir))
            new_destination = os.path.join(destination_dir, new_name)
            command_rename = f"mv {final_destination} {new_destination}"
            os.system(command_rename)
            print(f"Renamed directory to '{new_name}' at location '{new_destination}'.")

    except Exception as e:
        print(f"An error occurred: {e}")



def main():
    """
    Main function to execute the copying process.
    """
    obsidian_dir=os.environ.get("OBSIDIAN")
    k8s_text_folder=f"{obsidian_dir}/KUBERNETES"
    k8s_media_folder=f"{obsidian_dir}/MEDIA/kubernetes"

    copy_directory_contents(
            source_dir=k8s_text_folder,
            new_name="notes"

            )

    copy_directory_contents(
            source_dir=k8s_media_folder,
            new_name="media"
            )

    print("Files copied successfully!")

if __name__ == "__main__":
    main()
