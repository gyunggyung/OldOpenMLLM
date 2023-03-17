# OpenMLLM
Open Source + Multilingual MLLM + Fine-tuning + Distillation + More efficient models and learning + ?

## Help
We're looking for someone to join us in implementing a top-performing MLLM model.

### Job Offer
0. 🔥GPU/TPU/NPU support for the project🔥.
1. someone to fine-tune and change LLAMA together
2. someone to help with serving
3. someone to create time series images such as webtoons
4. Someone to create videos such as movies
5. someone who can monetize services like OpenAI, Stability AI, and Huggingface.

Reach out to me at the email below with a little bit about yourself.
newhiwoong@gmail.com 
이나 전화로 연락해주세요!

0. 🔥GPU/TPU/NPU 를 지원해주실 분🔥
1. LLAMA 를 같이 fine-tuning 및 바꿀 사람
2. 서빙에 도움을 줄 사람
3. 웹툰 등 시계열 이미지를 생성할 사람
4. 영화 등 영상을 생성할 사람
5. Stablity AI, Hugging Face 처럼 같이 서비스를 수익화할 사람

newhiwoong@gmail.com 
이나 전화로 연락해주세요!

## Reference
- antimatter15/alpaca.cpp: https://github.com/antimatter15/alpaca.cpp
- ggerganov/llama.cpp: https://github.com/ggerganov/llama.cpp
- tatsu-lab/stanford_alpaca: https://github.com/tatsu-lab/stanford_alpaca
- juncongmoo/chatllama: https://github.com/juncongmoo/chatllama
- gyunggyung/DistilKoBiLSTM: https://github.com/gyunggyung/DistilKoBiLSTM
- microsoft/unilm: https://github.com/microsoft/unilm
- deepmind/code_contests: https://github.com/deepmind/code_contests
- HeegyuKim/language-model: https://github.com/HeegyuKim/language-model
- google-research/t5x: https://github.com/google-research/t5x
- kojima-takeshi188/zero_shot_cotp: https://github.com/kojima-takeshi188/zero_shot_cot

### Next
- NVlabs/prismer: https://github.com/NVlabs/prismer
- microsoft/visual-chatgpt: https://github.com/microsoft/visual-chatgpt
- GPT-4: https://www.facebook.com/groups/6129390073749513/permalink/6131959123492608
- USM: https://arxiv.org/abs/2303.01037
- MuAViC: https://arxiv.org/abs/2303.00628
- GLOM: https://arxiv.org/pdf/2102.12627.pdf
- CACTI: https://cacti-framework.github.io/
- PaLM-E: https://palm-e.github.io
- Youtube: https://www.youtube.com/playlist?list=PLsmJteXozP3oHVB5TCrXEcrfQnInMxkoT


# Alpaca.cpp

Run a fast ChatGPT-like model locally on your device. The screencast below is not sped up and running on an M2 Macbook Air with 4GB of weights!

[The Model That Changes Everything: Alpaca Breakthrough (ft. Apple's LLM, BritGPT, Ernie and AlexaTM)](https://www.youtube.com/watch?v=xslW5sQOkC8)
[![asciicast](screencast.gif)](https://asciinema.org/a/dfJ8QXZ4u978Ona59LPEldtKK)


This combines the [LLaMA foundation model](https://github.com/facebookresearch/llama) with an [open reproduction](https://github.com/tloen/alpaca-lora) of [Stanford Alpaca](https://github.com/tatsu-lab/stanford_alpaca) a fine-tuning of the base model to obey instructions (akin to the [RLHF](https://huggingface.co/blog/rlhf) used to train ChatGPT) and a set of modifications to [llama.cpp](https://github.com/ggerganov/llama.cpp) to add a chat interface. 

## Get started

```
git clone https://github.com/antimatter15/alpaca.cpp
cd alpaca.cpp

make chat
./chat
```

You can download the weights for `ggml-alpaca-7b-q4.bin` with BitTorrent `magnet:?xt=urn:btih:5aaceaec63b03e51a98f04fd5c42320b2a033010&dn=ggml-alpaca-7b-q4.bin&tr=udp%3A%2F%2Ftracker.opentrackr.org%3A1337%2Fannounce&tr=udp%3A%2F%2Fopentracker.i2p.rocks%3A6969%2Fannounce`


Alternatively you can download them with IPFS.

```
# any of these will work
wget -O ggml-alpaca-7b-q4.bin -c https://gateway.estuary.tech/gw/ipfs/QmQ1bf2BTnYxq73MFJWu1B7bQ2UD6qG7D7YDCxhTndVkPC
wget -O ggml-alpaca-7b-q4.bin -c https://ipfs.io/ipfs/QmQ1bf2BTnYxq73MFJWu1B7bQ2UD6qG7D7YDCxhTndVkPC
wget -O ggml-alpaca-7b-q4.bin -c https://cloudflare-ipfs.com/ipfs/QmQ1bf2BTnYxq73MFJWu1B7bQ2UD6qG7D7YDCxhTndVkPC
```

Save the `ggml-alpaca-7b-q4.bin` file in the same directory as your `./chat` executable. 

The weights are based on the published fine-tunes from `alpaca-lora`, converted back into a pytorch checkpoint with a [modified script](https://github.com/tloen/alpaca-lora/pull/19) and then quantized with llama.cpp the regular way. 

## Credit

This combines [Facebook's LLaMA](https://github.com/facebookresearch/llama), [Stanford Alpaca](https://crfm.stanford.edu/2023/03/13/alpaca.html), [alpaca-lora](https://github.com/tloen/alpaca-lora) and [corresponding weights](https://huggingface.co/tloen/alpaca-lora-7b/tree/main) by Eric Wang (which uses [Jason Phang's implementation of LLaMA](https://github.com/huggingface/transformers/pull/21955) on top of Hugging Face Transformers), and [llama.cpp](https://github.com/ggerganov/llama.cpp) by Georgi Gerganov. The chat implementation is based on Matvey Soloviev's [Interactive Mode](https://github.com/ggerganov/llama.cpp/pull/61) for llama.cpp. Inspired by [Simon Willison's](https://til.simonwillison.net/llms/llama-7b-m2) getting started guide for LLaMA.


## Disclaimer

Note that the model weights are only to be used for research purposes, as they are derivative of LLaMA, and uses the published instruction data from the Stanford Alpaca project which is generated by OpenAI, which itself disallows the usage of its outputs to train competing models. 


