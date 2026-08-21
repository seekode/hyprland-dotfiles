[go back](../README.md)

# AI Widget (Quickshell) — Custom Models

The AI widget (`Super + A`) implemented by end-4 uses a whitelist of supported models defined in `Ai.qml`.
You probably want to add the latest Gemini models to the list, as they are not included by default.

## 1. Open the service configuration:
  ```bash
   zeditor ~/.config/quickshell/ii/services/Ai.qml
  ```
  
## 2. Locate the Gemini block and append your new model :
  ```javascript
    // here is an example of a Gemini model entry 
    "<model-id>": aiModelComponent.createObject(this, {
        "name": "<Display Name>",
        "icon": "google-gemini-symbolic",
        "description": Translation.tr("Online | Google's model\nDescription."),
        "homepage": "[https://aistudio.google.com](https://aistudio.google.com)",
        "endpoint": "[https://generativelanguage.googleapis.com/v1beta/models/](https://generativelanguage.googleapis.com/v1beta/models/)<model-id>:streamGenerateContent",
        "model": "<model-id>",
        "requires_key": true,
        "key_id": "gemini",
        "key_get_link": "[https://aistudio.google.com/app/apikey](https://aistudio.google.com/app/apikey)",
        "key_get_description": Translation.tr("**Pricing**: free.\n\n**Instructions**: Get API key from Google AI Studio"),
        "api_format": "gemini",
    }),
  ```

## 3. Reload
Reload Quickshell (Super + N -> click reload) or reopen the panel (Super + A).

## 4. Switch to the newly added model:
  ```bash
   /model <model-id>
  ```
