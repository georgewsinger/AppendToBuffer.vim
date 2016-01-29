# AppendToBuffer

[![asciicast](https://asciinema.org/a/60lpybkh5nqa8tkhammlqunnu.png)](https://asciinema.org/a/60lpybkh5nqa8tkhammlqunnu)

AppendToBuffer is a simple vim plugin which sends selected text to the **bottom** of another buffer in your vim session. When you send text to another buffer (either in another window, or in another tab), AppendToBuffer leaves a trace of confirmation text in your original buffer with the following message:

    <--SENT TO buffer-->

This plugin can be useful when working with a large number of vim buffers. As an added bonus, it supports tab completion.

# Installation

## Via Bundle

Add the following line to `~/.vimrc`:

    Plugin 'georgewsinger/AppendToBuffer.vim'

## Manually

Download the contents of the `plugin/AppendToBuffer.vim` in this git repository to your `~/.vim/plugin/AppendToBuffer.vim`.
