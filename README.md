# WindowsRebootNotifier

Provides capability to generate custom toast notifications for an internal IT department (that look a little nicer than the SCCM prompts) which reminds users to reboot their laptop periodically (script default is 14 days). If no reboot is performed after 14 days, a forceful reboot is scheduled.

There are a lot of really great custom toast notification scripts out there, but they are a lot longer in length (owing to doing more), and all I wanted was something short that performs one specific function.

Usage:
stage1.ps1 - This script should be run on all client devices. Alternatively, the Registry entries can be included in your base build image.
stage2.ps1 - This script should be run on all client devices (under the current user context), and can be handled via SCCM (think remediation scripts, compliance baselines, etc).
