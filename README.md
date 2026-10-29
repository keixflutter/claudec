# claudec

Simpan dan ganti login [Claude Code](https://claude.com/claude-code) di macOS dengan satu perintah.

Claude Code menyimpan login di dua tempat: item Keychain `Claude Code-credentials` (token OAuth) dan `oauthAccount` di `~/.claude.json`. `claudec` menyimpan salinan keduanya per akun di item Keychain sendiri (`claude-acct:<nama>`), jadi token tidak pernah ditulis ke file biasa.

## Pasang

Butuh macOS dan `python3`.

```sh
git clone https://github.com/keixflutter/claudec.git
cd claudec
./install.sh
```

Installer menyalin `claudec` ke `~/.local/bin/`. Pastikan folder itu ada di `PATH`.

## Pakai

| Perintah | Fungsi |
|---|---|
| `claudec save <nama>` | Simpan login yang sedang aktif sebagai `<nama>` |
| `claudec use <nama>` | Ganti ke akun `<nama>` |
| `claudec list` | Daftar akun, `*` = yang aktif |
| `claudec rm <nama>` | Hapus akun tersimpan |

Menambah akun: login dengan `/login` di Claude Code, lalu `claudec save <nama>`. Ulangi untuk tiap akun.

Sebelum ganti, `claudec use` menyimpan login yang aktif kembali ke profilnya, jadi token yang sudah di-refresh Claude tidak hilang.

**Setelah `use`, restart semua session `claude`.** Session yang masih berjalan memegang token lama di memori dan bisa menulis `oauthAccount` lama kembali.

## Ganti otomatis

[kei-statusline-claude](https://github.com/keixflutter/kei-statusline-claude) bisa memanggil `claudec use` otomatis saat limit Claude hampir habis.

## Lisensi

MIT
