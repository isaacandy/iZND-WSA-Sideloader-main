# Locales
This folder contains all the locale files to support multiple languages. The language that is used by iZND WSA Sideloader is dependent on your Windows display language. If your language isn't yet supported by iZND WSA Sideloader, it will fallback to English.

If you want to translate iZND WSA Sideloader to a language which is not yet supported, use the `en.json` file as a base for the translation. Make sure that the json file is named with the same format e.g. Japanese `ja.json`. If you have Python installed on your system, and want to check what display language is being reported to iZND WSA Sideloader, you can run these commands using the Python shell:

```
import ctypes
import locale
locale.windows_locale[ ctypes.windll.kernel32.GetUserDefaultUILanguage() ]
```

Use the first two letters for the file name.

Future updates to strings will involve updating all translated language files using Google Translate or some other machine translation service. As you may know, these services are not always accurate, so if you see any inaccuracies, please make a pull request!

During translation, it is a good idea to run iZND WSA Sideloader with the translated language to see the end result. Just make sure you have Git and Python 3.11 installed, clone this repo, install the dependencies and run `sideloader.py`. As long as the translated file is properly named and placed in the locales folder, it should automatically display in that language.

You can use the newline character `\n` to put the text after it to the next line on the screen. Text enclosed in `{}` brackets, such as `{secs}` are variables which should be left the way they are and not be translated. 
