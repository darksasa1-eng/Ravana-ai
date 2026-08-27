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
cWxqK2poaW15I1N4YCc3Q0RdJS8hc34hKy4qJSR7UWgWS1AQEGpOeWlsSmZZWQF6YABgdEZnYUBD
SE1FBgh2Ni4OFR0wKSc/EBN8LwsKEzs6Kn83PSMVbQxvbxAODSQXNikzBF4iGxsvRDsPFzcxFRhB
MjwcPxkzOxpKLRAr9eD28cjE1sjxvPjH2sjX4rv72N/84qHCyN/L/qn/8/OQkPri1MTSz8n+msLi
9fTqhf7T6+SD5ODby/Ps5s3H27mrj7upvfWXoIT7p7S+/I3/ueK2l5aXvuCPsaGzn5+wpbuUrZyV
lIHDo9yinoW0vricpcu5v6y/rc+vi4mEjJo4b2d0XFVLf2xTYV9GTEdeaXQrckREb0NzUn5qSjZ5
UkdJb0VuSxVBQHodYxt3T1VDY2NKZ1h1Y35sVlxlR0kOGTcuCXUWNQ1jAy8xH3svJhMjZmsOFA4R
a3YZOA8qP2oVNFYAAiEHHiwdJjkJVDhXPgMhGh4yO1hMIU4wEjkbTMXStbfiseu04PDp2e3B9sX3
yeLY0O+hwdfdqdDQ5MfN5ufB0uzX39Ge4ubswtnBn4L1+f3Y3MH78d3L38n8+ta2j7qAl6v36Pul
sIL6h4r7npWahY2m5+Kg7u+xt+2Sj7mA14mmsaOzgaWFpLuu3cCqq5i+tryFr469gMuxjaS1SDEz
QHFEaX5vZUBHOUM4ViMmc0Rie1xYaUFQaTMvLnB1SFtEHA5NbQdebwQaYEdGdABBHEMICxAREDBf
WVseYChpHTNtf0xnaGlqOSk5Oz0+cToyJz06Pjp3KTM9b2tpSA4SBgpNORdESUgZDk9HQQIUExdc
XF9ZEBwCHxUaGwz0qauJ2+fn46i0qsXj4+uF9v7gs8vn8/u0ucXs/fPqv8nPgvzp5Oj8is/Dx8ne
jPKe2MbW2caenoKzmpucneHP4PzirLfrtqa8oeSho6Sg54+V/vOLp7O78dP6+/z9t7nAj42XxIqV
yZiInoPCiJaGg4WB26uF39eXi9qklNWhjykhIz4kWnFmZn0wASwtLi8wMTIzS3d3czgkOkRueHIV
AAECAwQFBgdKW09KRydHSRBuUFJQFV9EGHdVVVkdX1EkYR0rbCo1aTgoPiNiKDY/MT82JicwJH96
J3V1LjwocBIAFE0UHEROQUlLVkwyIy4+KlAAAAAUVSVDcFtcXV4g4uDmo7mlpOvn6O7u/q+E5vax
zfH18bb+67n09Oi90PDOxJiphIWGh9jbw8XYhYzzyIDQ6I2E2+vAiNjgjdCen4WTkIyW5f/+8umJ
hJ6I7puRnIKWhpCS94P7+vD8gry+hMHJw8a4up/Zi7Hbgc/H5dDR0tOEh5+ZjNHYp4TMnKQzMG8j
JGRzc2BsZH9lbmd7aTFkdmZ8cH57eG5yc3M+eUFITkZABcSnvAlYTkJMQ0ZeVhJcRhVbWFxQXEJV
U1kfEgAUAgoEZi47aSQkOG0+KiI8OycgMDJ5BCFrOQdtM31Ja0JDREUWFQEHHkNOMRZeEipBQhlV
VhAdDVoPFBheHvX16ubq8e/kqOv/4uDpruni/v+z4P3zt/f//PL/9P/zgPPj9eXr54fp4IrZyd3B
3NnF3cHNm+rPidvhi9Gfl7Xg4eLjt7y16a2xo7/k9Pfm2o69obCwpPfl+YH5v6+nr5SOwM/Ex4WL
gYyEn87Bzs2Sg5Oamtfa19qUn5aTj4fdLCEgd2tqanQqJSopbX1+LU0bTX57cWU3JTlhZhZ7cW0A
fkxCSUAGTkYJdUReSUtdCjsSExQVaUcYBBpUTxNOXjQpbCkrLChvFw1maxMjLyI1cXlzdnszOTt7
c1F8fX5/PxIQAERYRjgdB0IEHAgARy8BW10GEBcTUFBTcVxdXl/f7KK+pPH/9+36pMbj6fvj9cXr
4/G9yfn59P+ylr2+v4D+z437+sDOxMz19IyQjvDAu5KTlJXFzsuX19TYyNLas5qdraWoo5ro9OqU
ocfu7/Dxjb67saWMh7e7trmA/uLAvo/pxMXGx42Rj4jEjoGCgJieltyqhYWb1dqkjNHe3WV5Z2Am
LConV2QkVFNpZ2xkTk06Hkp7eHxqQTl9bW49fQ9PQk1LDlRRWgRKXkpYdAELbxo+
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
if [ -w /usr/local/bin ] 2>/dev/null; then TARGET=/usr/local/bin/rav
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
