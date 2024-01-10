# Update MS Defender definition

A simple batch file to download and install the latest Microsoft Defender security intelligence definition, with simple logging.  
  
Created as a temporary workaround for network error "Protection definition update failed" (Error code 80070102: The wait operation timed out) that prevents MS Defender definition from being downloaded: 
- Windows Update will get stuck trying to grab a new definition, showing "Downloading 0%" or another number without completion.
- The problem appears across managed and unmanaged devices connected to the enterprise network.
- Resetting Windows Update etc won't work. 
- Other Windows updates (monthly patches and quality update previews) can still be downloaded and installed.
  
Tested on a few individual devices in an enterprise network:
- Windows 11 Enterprise 23H2 (managed)
- Windows 11 Pro 22H2 (unmanaged)
- Windows 10 Education 22H2 (unmanaged)
  
Add to Task Scheduler if needed to automate the update. 

_Test before use_.
