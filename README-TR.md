# 🚀 Ultrathink for All

<div align="center">

**Claude Code'un genişletilmiş düşünme özelliğini tüm AI IDE'lere taşıyın**

[English](README.md) | [Türkçe](#-bu-nedir)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

</div>

---

## 🧠 Bu Nedir?

**Ultrathink for All**, [Claude Code'un genişletilmiş düşünme](https://docs.anthropic.com/en/docs/claude-code) komutlarını **tüm AI destekli kod editörlerine** getirir.

Claude Code'da `think`, `think harder` ve `ultrathink` gibi anahtar kelimeler, AI'ın daha fazla "düşünme token'ı" ayırmasını sağlar - cevap vermeden önce problem üzerinde daha uzun süre düşünür. Bu, karmaşık problemler için daha iyi çözümler üretir.

**Bu proje, aynı komutları HERHANGİ bir LLM modeli ve HERHANGİ bir IDE ile çalışır hale getirir:**

| Her LLM ile Çalışır | Her IDE ile Çalışır |
|---------------------|---------------------|
| ✅ Claude | ✅ Cursor |
| ✅ GPT-4 | ✅ Windsurf |
| ✅ Gemini | ✅ VS Code (Copilot) |
| ✅ Diğer tüm modeller | ✅ Antigravity |

### Nasıl Çalışır?

Özel model özellikleri yerine, bu workflow'lar **prompt engineering** kullanarak HERHANGİ bir AI'ı şunları yapmaya yönlendirir:
- Cevap vermeden önce daha fazla zaman ayırmak
- Daha fazla alternatif değerlendirmek
- Varsayımları sorgulamak
- Kök nedenleri bulmak
- Kesin çalışan çözümler üretmek

---

## ⚡ Hızlı Kurulum

### macOS / Linux
```bash
curl -fsSL https://raw.githubusercontent.com/grandeand/ultrathink-for-all/main/install.sh | bash
```

### Windows (PowerShell)
```powershell
irm https://raw.githubusercontent.com/grandeand/ultrathink-for-all/main/install.ps1 | iex
```

---

## 📖 Manuel Kurulum

<details>
<summary><b>Antigravity / Gemini</b></summary>

```bash
cp -r antigravity/global_workflows/* ~/.gemini/antigravity/global_workflows/
```
</details>

<details>
<summary><b>Cursor</b></summary>

```bash
# Global (tüm projeler)
cp -r cursor/commands/* ~/.cursor/commands/

# Proje bazlı
cp -r cursor/commands/* .cursor/commands/
```
</details>

<details>
<summary><b>VS Code (Copilot)</b></summary>

```bash
# Proje dosyanıza ekleyin
cat vscode/copilot-instructions-addon.md >> .github/copilot-instructions.md
```
</details>

<details>
<summary><b>Windsurf</b></summary>

```bash
cp -r windsurf/rules/* ~/.windsurf/rules/
```
</details>

---

## 🎯 Kullanım

Kurulumdan sonra, AI sohbetinizde şu komutları kullanın:

```
/think [probleminiz]
```
> Temel genişletilmiş düşünme - cevap vermeden önce daha derin analiz

```
/think-harder [probleminiz]
```
> Gelişmiş düşünme - ilk denemede çözülemeyen problemler için

```
/ultrathink [probleminiz]
```
> Maksimum kapasite - en zor problemler için, tamamen takıldığınızda

### Örnek

```
/ultrathink bu bug'ı 10 kez denedik, neden çözemiyoruz? Artık çöz!
```

---

## 📊 Düşünme Seviyeleri

| Seviye | Davranış | Ne Zaman Kullanılır |
|--------|----------|---------------------|
| `/think` | Acele etme, derin analiz, 2-3 alternatif düşün | Karmaşık problemler |
| `/think-harder` | Çok daha uzun düşünme, varsayımları sorgula, kök nedeni bul | Tekrarlayan sorunlar |
| `/ultrathink` | Maksimum kapasite, her şeyi sorgula, pes etmek yok | "İmkansız" bug'lar |

**Temel prensip:** Token maliyeti önemli değil - doğruluk önemli.

---

## 🤝 Katkıda Bulunma

PR'lar memnuniyetle karşılanır! Yapabilecekleriniz:
- Daha fazla IDE desteği eklemek
- Mevcut workflow talimatlarını iyileştirmek
- Çeviriler eklemek

---

## 📜 Lisans

MIT

---

## 🙏 Teşekkürler

Anthropic'in [Claude Code genişletilmiş düşünme modu](https://docs.anthropic.com/en/docs/claude-code)'ndan esinlenilmiştir.
