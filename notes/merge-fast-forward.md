# Merge и fast-forward

## Что было сделано руками

В этой домашке я сделал две разные операции.

Сначала я создал ветку `practice/ff-source`, добавил файл `practice/ff-source.txt`, вернулся в `homework-v3-03-03-merge-fast-forward` и выполнил fast-forward merge. Потом я создал ветку `practice/merge-source`, сделал в ней отдельный commit, вернулся в домашнюю ветку, сделал другой commit в `practice/merge-target.txt` и выполнил merge с отдельным merge commit.

## Fast-forward

Fast-forward возможен, когда target branch является предком source branch. Git не создает новый commit, а передвигает branch pointer вперед. В моей истории это был переход от `c9575e7` к `d9271c8`.

Схема до fast-forward:

```text
c9575e7  homework branch
   \
    d9271c8  practice/ff-source
```

Схема после fast-forward:

```text
c9575e7 -- d9271c8  homework branch, practice/ff-source
```

## Merge commit

Merge commit нужен, когда две линии развивались независимо. В моей истории домашняя ветка получила commit `fa1cfcd`, а `practice/merge-source` получила commit `5bf6db0`. Git уже не мог просто передвинуть pointer, поэтому появился merge commit `e642995`.

```text
*   e642995 merge: practice source into homework branch
|\
| * 5bf6db0 docs: add merge source practice change
* | fa1cfcd docs: add merge target practice change
|/
* d9271c8 docs: add fast-forward practice source
* c9575e7 docs: add module 03 reference artifact
```

Commit `e642995` имеет двух родителей. Он фиксирует, что история из домашней линии и история из `practice/merge-source` соединены в одной точке.

## Почему это важно для review

Merge не является случайным склеиванием файлов. Он зависит от commit graph. В corporate flow feature branch обычно проходит review и CI до попадания в protected line. Локальный merge в `main` и push напрямую не является правильной моделью для protected `main`.

## Команды диагностики

```bash
git log --oneline --decorate --graph -8
git status --short
make check
```
