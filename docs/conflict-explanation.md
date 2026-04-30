# Conflict explanation

## Реальная тренировка

Я создал файл `practice/conflict-target.txt` и две линии изменений. В домашней ветке строка стала такой:

```text
Checkout message: validate cart total and stock before payment.
```

Во входящей ветке `practice/conflict-incoming` эта же строка стала такой:

```text
Checkout message: validate cart total and coupon before payment.
```

При merge Git остановился, потому что обе ветки изменили одну и ту же строку по-разному. Итоговое решение сохраняет оба смысла:

```text
Checkout message: validate cart total, stock, and coupon before payment.
```

## Why conflicts happen

Git can merge independent changes automatically. A conflict appears when two branches changed the same area and Git cannot safely choose the final result. This is not a Git failure. It is a request for a human decision.

## Conflict markers

```text
marker: <<<<<<< HEAD
current: Checkout message: validate cart total and stock before payment.
marker: =======
incoming: Checkout message: validate cart total and coupon before payment.
marker: >>>>>>> practice/conflict-incoming
```

`HEAD` is the current side. The separator divides the two versions. The last line names the incoming side. The final file must not contain these markers.

## Resolution order

1. Run `git status --short`.
2. Open the conflicted file.
3. Read both sides and understand the intended meaning.
4. Write one final version that preserves the correct behavior or explanation.
5. Remove markers.
6. Run checks.

I do not use automatic "accept all current" or "accept all incoming" without reading the conflict.

## Review explanation

```text
Conflict was in practice/conflict-target.txt.
Current branch required stock validation before payment.
Incoming branch required coupon validation before payment.
Final version keeps both checks: cart total, stock, and coupon are validated before payment.
Checked with make check and git diff --check.
```

## Checks after resolution

```bash
make check
git status --short
git diff --check
```
