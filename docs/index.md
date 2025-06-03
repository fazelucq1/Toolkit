# Welcome to “Toolkit”

This GitBook gathers all the APT packages and PIP libraries you need to rapidly configure new Linux devices, with a special focus on cybersecurity, development, and data analysis.

Use the navigation menu on the left to jump to the category you’re interested in.

---

## Dump All Tool Names

To automate the extraction of every single tool name (both APT and PIP) into separate wordlist files, run the following commands from the root of this repository:

```bash
# [A] Generate list of APT packages
#  • Search every Markdown file under docs/2-apt for lines that look like package names,
#    strip off trailing backslashes, and place each name on its own line.
grep -h -E '^\s+[a-zA-Z0-9_-]+' docs/2-apt/*.md \
  | sed 's/\\//g; s/^\s*//g' \
  | tr ' ' '\n' \
  > all_apt_tools.txt

# [B] Generate list of PIP packages
#  • Search every Markdown file under docs/3-pip for lines with “package==version”,
#    strip off version numbers and backslashes, then place each name on its own line.
grep -h -E '^\s+.*==' docs/3-pip/*.md \
  | sed 's/\\//g; s/^\s*//g; s/==.*//g' \
  > all_pip_tools.txt

# [C] (Optional) Combine both lists into a single file
cat all_apt_tools.txt all_pip_tools.txt > all_tools_wordlist.txt
