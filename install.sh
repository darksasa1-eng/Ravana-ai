#!/usr/bin/env bash
# RAVANA AI installer — by Sasa Dev
set -e
BOLD="\033[1m"; RED="\033[91m"; GREEN="\033[92m"; WHITE="\033[97m"; DIM="\033[90m"; RS="\033[0m"
printf "${RED}${BOLD}\n"
printf '  ██▀███   ▄▄▄    ██▒   █▓ ▄▄▄       ███▄    █  ▄▄▄    \n'
printf ' ▓██ ▒ ██▒▒████▄ ▓██░   █▒▒████▄     ██ ▀█   █ ▒████▄  \n'
printf ' ▓██ ░▄█ ▒▒██  ▀█▄▓██  █▒░▒██  ▀█▄  ▓██  ▀█ ██▒▒██  ▀█▄\n'
printf ' ▒██▀▀█▄  ░██▄▄▄▄██▒██ █░░░██▄▄▄▄██ ▓██▒  ▐▌██▒░██▄▄▄▄██\n'
printf ' ░██▓ ▒██▒ ▓█   ▓██▒▒▀█░   ▓█   ▓██▒▒██░   ▓██░ ▓█   ▓██▒\n'
printf ' ░ ▒▓ ░▒▓░ ▒▒   ▓▒█░░ ▐░   ▒▒   ▓▒█░░ ▒░   ░ ▒░ ▒▒   ▓▒█░\n'
printf '   ░▒ ░ ▒░  ▒   ▒▒ ░░ ░░    ▒   ▒▒ ░  ░░   ░ ▒░  ▒   ▒▒ ░\n'
printf '   ░░   ░   ░   ▒      ░░    ░   ▒        ░   ░   ░   ▒   \n'
printf '    ░             ░  ░   ░        ░  ░         ░       ░  \n'
printf "${RS}\n"
printf "  ${WHITE}${BOLD}RAVANA AI${RS} ${WHITE}installer${RS}   ${DIM}by Sasa Dev${RS}\n\n"

command -v python3 >/dev/null 2>&1 || { printf "${RED}python3 not found. run: sudo apt install python3${RS}\n"; exit 1; }

TERMUX=0
[ -n "${TERMUX_VERSION:-}" ] && TERMUX=1
if [ $TERMUX -eq 1 ]; then
  command -v python3 >/dev/null 2>&1 || { printf "${RED}python3 not found. run: pkg install python${RS}\n"; exit 1; }
else
  command -v python3 >/dev/null 2>&1 || { printf "${RED}python3 not found. run: sudo apt install python3${RS}\n"; exit 1; }
fi

DEST="$HOME/.rav"
mkdir -p "$DEST/core"
chmod 700 "$DEST"

SRCDIR="$(cd "$(dirname "$0")" && pwd)/core"
for f in "$SRCDIR"/*.enc; do
  cp "$f" "$DEST/core/"
done
printf " ${GREEN}✔${RS} sealed core installed\n"

cat > "$DEST/core/.seed" <<'SEED64'
IyFQQlJESEYoem9qYGhqL3J+fWcefHtnd2tuO3NuMj9TWFEPBFFfV01aBgtGXkFBHBFQUkdQAAMU
GUBXVV8SHyggMSsoLCRNFw1qdmwiPWEgMCY7ejAuJzk3Pi4vOCx3Qh9NTRYEEEgLBhgOTkRkHAkC
XAMVAR5ZERcJHg4JVk+sod3HrY/i4u6p1fOk0vmmqpuys7S15PLs7Oj1vL+8scrOy82Mxs7VgMbY
z4TyzYaQ75KDzID3npjf1cmc4t2fqa/inLPszJiY6ffrl5K254+w+/P/9Ymv8Ia48vy7sa3AvoPP
xLqEx4GHypGFnca0162Gr4zElKuMpYLKntrS3yddejM8WX42alVyO28qIi83TWoiLUluJi1FYisk
OjI/Bw1JBAgFAXtQGRoAQQpzAxBqFURoTQdSZEELXWBFDlxnbWJkGD13JRQxe38QNX8td31ydAgt
ZzF/dXp8KDd5c0BGG1I4HVdRAEURNxRdVgxdLQpCFSkORkxbFAwUFxYTp9yr3o7a9eLt7aq2rO+s
87K/+Pz9+77ntvz0+PP5+7eJgcTM1oXWh8HHivT8hKTJ38OS7N2V39mYy9vV29iWi/D49Or+z+bn
6OmVuKmoqu/t8bqyp726vrr3qbO97+vpyL6RhoGBxszIi8i3lN3evbGns721qY7HyNvT1ZiUmZpz
dSoqDk4mOihWeW5paSBndWk6OjpweHR3fX8zNRd6ekYBfUhXDU1CUQUKRQUXJA8QERJsWxULF1pA
Tl5dT0xeOWlrSWRlZmcXKmp2bH1Eb3BxciQ8PDoyeDU/NXQCMXZAXUINXm9GR0hJSktMTTEAUFpP
UxwUBR8UEBhVDxUfTbW3qujh/KasqNbppfji0e3p5ffgvK26t7r78/y+tLexxMjFxtfRjo6iiYqL
jI2Oj5Du0ZOfiJaGspmam5zP28u1s6zjpryyorvhlaSX96CS+du2trL1iaK28YWv9efU/8DBwryF
yca4hYiJx8yyjNnE0c/Tq4HYhIyLk4vU1NCMcG1rdywnPCUhAyorLC1RbGQxLzN2dGVyLi00eSop
enpDTkZGDHpEERwAIAsMDQ5GVhFaUkddWl5aF0lTXQ8LCWgeITdtay4iMC0jLCk+Omd5CmhrCXV3
angGNzo/Z1R/QEFCQ0RFRhUJABkOTDsPAwUUNwEGGgRfWgofGhBdHRDy8/fz8ODipaGDqqusrdHr
sKyy8e3h8+SwxuK7wr3B5oDHzdGE+t6LiPbTi8XDjtXZwZrs18Gal+fSyZP3kZ7Tpa/qnKex7+7h
4MDr7O3uvbWlp6G69ay7sbv0v7m+sbKQk4eQl825g8HHjo6PgoqK2NOHh5LYztXR86W2vbPewiBr
cWxqK2poaW15I1N4YCc3Q0RdJS8ldH16eHp/KSR7UWhVW1B2R2pxeW1GaR9tTV14VWkHWXxlTF19
Q35PTmU4DRMKJ3YgMRp5G2QLBzwXMhgBMgJiZQ40CDg8bRxsBVknCCVUD1QDHh0ZEzgfXzgmOhMk
EkIRRDIDIB0MK0c7yen0wP7DtOTZub3exPj8+eaj++TD0qLG/Pjo1NTKx+vlz+nqkYrt6Jvu4+3V
xPzm5dDG/fPd/fLZ7NPr8PnSi/OutJWo9vX1noOvp66qmqectrehkeHus5bssum2ibbv0YWEr6qO
lNKQg6+Zir2hjJa1wIqun7WWk6iJkM2SjqVRakpEMGdgQWUiYm9JIjZHcUdnS3p4fXN1clIvcylV
d0pPEVV8FEphRmtnR2pfXGl7U1NnX0VAWVJDSnhEcEdLMi07dxE/FCMJCBMcCy96HT4WBicwOw4h
LwgbMG1oJxJXJjtWXFwkMjswWRsuPV9fORUYXAEzGjItLx8oNVZLR8q5xrr2sMfg4aLkx77j7+jK
+/vA3ubepfrj69r9767T79DgxOeV9sLvn+ni/frp45vI38DC2sHA4pbTyPTMz+WXgKvwtLL2gqb4
s76Y+Yas+7iogbaChbHp6umtremSpqqpr6udrp+fndHBmqbaoIm+t4ipgLCEgIyJyJKZioaraHsx
KDc2VTN5TVNie0dXTGJBXld6THFtL219WF52Ui9HW0NZYF1UFhFAYmpudX0WRgUPFB0cPFNdXxpk
VBVhT2l7SGNkZWY1LT0/OSJtJi4jOT46NnslPzlrb210Mi46Dkk9E0hFRBUKS0NFHggPC1hYW10c
EA4TER4fCAhVV3Xf4+PnpLimyefn74Hq4vyvz+P3/7i1yeD59+679fO+wO3g7PiGw8/LzdqI9oLE
2srdwpqajr+Wl5iZ5cucgJ7Qs++yorCt6K2noKTjk4ni74+jt7/93/b3+PmzvfyzsavAjpHNlISS
j8aMkoKfmZ3Hr4Hb05uH1qiQ0aWL1d3fwiBedWJqcTwNKCkqKywtLi9Pc3N3NCg2SGp8dhE8PT4/
AAECA0ZXQ0ZDI0NNDHJMTlQRW0AUe1lZXRlbVVgdYVdoLjFtNCQyL2YsMjstIyo6IzQge3YreXkq
OCx0LjwocRAYQEpNRUdaSDYnKiI2TBwEBBBRKU98V1hZWiQeHBpfvaGg7+vk4uL6q4Di6q3R7fH1
svrntfj47LnU9PL4pJWAgYKD1NfPydyBiPfUnMz0iYDf78yE1OyJ1Jqb+e/s8JLh+/r+5YWImozq
n42AnoqClJbzj/f2/PiGuLq4/fX/wry+m9WHvdeFy8PhzM3Oz4CDm52A3dSrgMiYoM/Mk98gYHd3
bGBoc2FqY391LXhqYnh0end0Yn53dzp9fXRyekQBwKOwBVRCRkhHQkJKDkBCEV9cUFxQTlFXXRtu
fGh+DgBiKjdlKCg8aTouPiAnOyQ0Nn0ILWc1A2k3eXVXfn9AQRIRDQsST0o1EloONl1eHVFSFBEB
VgMQHFoaCQkWGu716+Ck5/Pu5O2q7f7i46/k+fez+/Pw/vvw+/e8z9/J4e/jg+XshtXN2cXYxdnB
3cmf7suF1+2H1ZuTsZydnp+zuLHtob2vs+Dw8+LGkqG9tLSg8+n1jfW7q6OrqLL888DDgY+NgIiT
ysXKyY6fj4ae097T1piTmpeLg9nQ3dyLb25ucCYpJiVpeXopUQdRYn91YTMpNW1qEn91aTxCcH5N
RAJKSgV5SFpNT1kWJw4PEBFtQxQIFlhLF0paSFUQVS8oLGsbAWpnFycrJiltZW9yfzc9N3d/XXh5
ensDLiw8QFxCPBELTggYDARDMx1HQQIUExdcXF99WFlaWyMQXkKg9fvz4faoyuft/+fp2ff/9bnN
/fX4876Subq7vMLzsf/+xMrIwPn4iJSK9Nynjo+QkcHKx5vb2NzM1t7P5uHRoaynnuT45pilw+rr
7O2Ror+1oYiLu7e6vYT65vyCs9XAwcLDgZ2DhMCKhYachIKK2K6BgZfZ1qiI1drZmYWbnCIoLiNb
aChYV21jaHhSUSYaTn98cGZNNXlpajlBM3N+SU8KUF1WCEZaTlxwHRdzBjo=
SEED64

python3 - "$DEST" <<'PYUNMASK'
import base64, os, sys
dest = sys.argv[1]
raw64 = open(os.path.join(dest, "core", ".seed")).read()
mask = bytes(i & 0xFF for i in range(256))
data = bytes(b ^ mask[i % 256] for i, b in enumerate(base64.b64decode(raw64)))
with open(os.path.join(dest, "core", "bootstrap.py"), "wb") as f:
    f.write(data)
PYUNMASK

python3 -c "import py_compile; py_compile.compile('$DEST/core/bootstrap.py', cfile='$DEST/core/boot.pyc', doraise=True)" \
  || { printf "${RED}bootstrap compile failed${RS}\n"; exit 1; }

# shred the plaintext bootstrap — only compiled bytecode remains
python3 - "$DEST" <<'PYSHRED'
import os, sys
p = os.path.join(sys.argv[1], "core", "bootstrap.py")
n = os.path.getsize(p)
with open(p, "wb") as f:
    f.write(os.urandom(n))
os.remove(p)
seed = os.path.join(sys.argv[1], "core", ".seed")
if os.path.exists(seed):
    os.remove(seed)
PYSHRED
printf " ${GREEN}✔${RS} tamper-lock armed (integrity mesh verified at every boot)\n"

cat > "$DEST/rav.py" <<'RAVPY'
#!/usr/bin/env python3
# RAVANA launcher — by Sasa Dev
import os, sys, importlib.util
_p = os.path.expanduser("~/.rav/core/boot.pyc")
if not os.path.exists(_p):
    print("\x1b[31mRAVANA core missing — reinstall with: bash install.sh\x1b[0m")
    sys.exit(1)
_s = importlib.util.spec_from_file_location("ravboot", _p)
_m = importlib.util.module_from_spec(_s)
_s.loader.exec_module(_m)
RAVPY
chmod 700 "$DEST/rav.py"

LAUNCHER='#!/usr/bin/env bash
exec python3 "$HOME/.rav/rav.py" "$@"'
TARGET=""
if [ $TERMUX -eq 1 ]; then
  TARGET="${PREFIX:-/data/data/com.termux/files/usr}/bin/rav"
  mkdir -p "$(dirname "$TARGET")"
elif [ -w /usr/local/bin ] 2>/dev/null; then TARGET=/usr/local/bin/rav
elif [ -w "$HOME/.local/bin" ] || mkdir -p "$HOME/.local/bin" 2>/dev/null; then TARGET="$HOME/.local/bin/rav"
fi
if [ -n "$TARGET" ]; then
  printf '%s' "$LAUNCHER" > "$TARGET"
  chmod +x "$TARGET"
  case ":$PATH:" in *":$(dirname "$TARGET"):"*) ;; *) printf " ${RED}!${RS} add $(dirname "$TARGET") to PATH\n" ;; esac
  printf " ${GREEN}✔${RS} launcher -> %s\n" "$TARGET"
else
  printf " ${RED}!${RS} could not write a launcher; run manually: python3 ~/.rav/rav.py\n"
fi

printf "\n ${GREEN}${BOLD}✔ RAVANA is live.${RS} launch with: ${WHITE}${BOLD}rav${RS}\n"
printf " ${DIM}first run picks the fastest available core automatically${RS}\n\n"
