This scripts in this folder work in conjunction with the Tampermonkey extension available in the Chrome store.

1. Install the extension
2. Click on the extension icon -> click the new script icon
3. Copy paste the contents of the script
4. Update the @match url in the script to wherever your phabricator instance is.
   For example, if phabricator works at https://secure.phabricator.com, you'll want to change the line to:

       @match        https://secure.phabricator.com/*


