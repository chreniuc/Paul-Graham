# Essays: Paul Graham

[中文版](Readme-CN.md)

After I crawled all the essays, I have done the following works:

 - Design book cover
 - Convert webpage encoding from **cp1252** to **utf-8** to prevent garbled characters
 - Added three chapters: **Favorite**, **Hackers and Painters**, **Latest**
 - Group essays alphabetically
 - Add a few articles that are not original written by the author but are on the author's website(Richard Hamming, Donald E. Knuth...)
 - Correct several punctuation mistakes (dashes and quotation marks) in the essays
 - Delete 2 broken links, remove 1 obsolete essay with too short content
 - Fix some unmatched tags in web pages to prevent text overflow on Kindles

If you are familiar with *python* and *html*, then you can add or remove essays/chapters easily! First, editing **calibre.recipe** or **index.html**, then follow the following steps:

## 1. Clone this repo and start a local web server

```sh
git clone https://github.com/evmn/Paul-Graham.git
cd Paul-Graham
python -m http.server 8000
```

## 2. Test recipe

Debug your recipe with the following command:

```sh
ebook-convert calibre.recipe .mobi --test -vv --debug-pipeline debug
```

## 3. Generate Your E-Book

You can choose from Calibre and command line.

### Calibre

Open Calibre, right click **Fetch news**, then choose **Add or edit a custom news source**, click **New recipe**, then **Switch to advanced mode** and paste your recipe there, then click **Save** and choose **Download this recipe**. It takes less than a minute to make a Kindle books with local server.

*You can also refer to this [demo video](https://t.me/master_thyself/293) in Telegram.*

![](images/speed.jpg)

### Command Line

```sh
ebook-convert "calibre.recipe" .mobi \
        --authors="Paul Graham" \
        --title="Essays of Paul Graham" \
        --pubdate="2021-10-24" \
        --output-profile=kindle_pw3 \
        --mobi-file-type=new \
        -vv
```

## 4. Read on Kindle/PC

![](images/screanshot_1.png)

![](images/screanshot_2.png)

![](images/screenshot_3.jpg)

![](images/unlearn.jpg)

## Known Bugs

 - Footnotes link can't work properly

## Resource

 - [Latest E-Book Generated with the Latest Recipe(the E-Book in this repo is obsolete)](https://t.me/master_thyself/285)
 - [Demo video of download custom recipe with Calibre](https://t.me/master_thyself/293)
 - [Custom news fetching](https://blog.calibre-ebook.com/custom-news-fetching/)
 - [https://github.com/samiq/pg](https://github.com/samiq/pg)
