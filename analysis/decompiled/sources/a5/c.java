package a5;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;
import m5.p;
import m5.v;
import m5.w;
import z4.g;
import z4.l;

/* JADX INFO: compiled from: Cea708Decoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends d {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final w f405g = new w();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final v f406h = new v();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f407i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f408j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final b[] f409k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public b f410l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public List<z4.a> f411m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<z4.a> f412n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public C0008c f413o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f414p;

    /* JADX INFO: compiled from: Cea708Decoder.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final z4.a f415a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f416b;

        public a(CharSequence charSequence, Layout.Alignment alignment, float f10, int i10, float f11, int i11, boolean z10, int i12, int i13) {
            this.f415a = new z4.a(charSequence, alignment, null, null, f10, 0, i10, f11, i11, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, -3.4028235E38f, z10, z10 ? i12 : -16777216, Integer.MIN_VALUE, 0.0f);
            this.f416b = i13;
        }
    }

    /* JADX INFO: compiled from: Cea708Decoder.java */
    public static final class b {
        public static final int[] A;
        public static final boolean[] B;
        public static final int[] C;
        public static final int[] D;
        public static final int[] E;
        public static final int[] F;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public static final int f417w = d(2, 2, 2, 0);

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public static final int f418x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public static final int[] f419y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public static final int[] f420z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<SpannableString> f421a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SpannableStringBuilder f422b = new SpannableStringBuilder();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f423c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f424d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f425e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f426f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f427g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f428h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f429i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f430j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f431k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f432l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f433m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f434n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f435o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f436p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f437q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public int f438r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f439s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f440t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f441u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f442v;

        static {
            int iD = d(0, 0, 0, 0);
            f418x = iD;
            int iD2 = d(0, 0, 0, 3);
            f419y = new int[]{0, 0, 0, 0, 0, 2, 0};
            f420z = new int[]{0, 0, 0, 0, 0, 0, 2};
            A = new int[]{3, 3, 3, 3, 3, 3, 1};
            B = new boolean[]{false, false, false, true, true, true, false};
            C = new int[]{iD, iD2, iD, iD, iD2, iD, iD};
            D = new int[]{0, 1, 2, 3, 4, 3, 4};
            E = new int[]{0, 0, 0, 0, 0, 3, 3};
            F = new int[]{iD, iD, iD, iD, iD, iD2, iD2};
        }

        public b() {
            f();
        }

        /* JADX WARN: Code duplicated, block: B:12:0x0021  */
        public static int d(int i10, int i11, int i12, int i13) {
            int i14;
            m5.a.c(i10, 4);
            m5.a.c(i11, 4);
            m5.a.c(i12, 4);
            m5.a.c(i13, 4);
            if (i13 == 0 || i13 == 1) {
                i14 = 255;
            } else if (i13 == 2) {
                i14 = 127;
            } else if (i13 != 3) {
                i14 = 255;
            } else {
                i14 = 0;
            }
            return Color.argb(i14, i10 > 1 ? 255 : 0, i11 > 1 ? 255 : 0, i12 > 1 ? 255 : 0);
        }

        /* JADX WARN: Type inference failed for: r3v1, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        /* JADX WARN: Type inference failed for: r3v10, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        /* JADX WARN: Type inference failed for: r3v11, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        /* JADX WARN: Type inference failed for: r3v8, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        public final void a(char c10) {
            if (c10 != '\n') {
                this.f422b.append(c10);
                return;
            }
            this.f421a.add(b());
            this.f422b.clear();
            if (this.f436p != -1) {
                this.f436p = 0;
            }
            if (this.f437q != -1) {
                this.f437q = 0;
            }
            if (this.f438r != -1) {
                this.f438r = 0;
            }
            if (this.f440t != -1) {
                this.f440t = 0;
            }
            while (true) {
                if ((!this.f431k || this.f421a.size() < this.f430j) && this.f421a.size() < 15) {
                    return;
                } else {
                    this.f421a.remove(0);
                }
            }
        }

        public final SpannableString b() {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(this.f422b);
            int length = spannableStringBuilder.length();
            if (length > 0) {
                if (this.f436p != -1) {
                    spannableStringBuilder.setSpan(new StyleSpan(2), this.f436p, length, 33);
                }
                if (this.f437q != -1) {
                    spannableStringBuilder.setSpan(new UnderlineSpan(), this.f437q, length, 33);
                }
                if (this.f438r != -1) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(this.f439s), this.f438r, length, 33);
                }
                if (this.f440t != -1) {
                    spannableStringBuilder.setSpan(new BackgroundColorSpan(this.f441u), this.f440t, length, 33);
                }
            }
            return new SpannableString(spannableStringBuilder);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        public final void c() {
            this.f421a.clear();
            this.f422b.clear();
            this.f436p = -1;
            this.f437q = -1;
            this.f438r = -1;
            this.f440t = -1;
            this.f442v = 0;
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
        public final boolean e() {
            return !this.f423c || (this.f421a.isEmpty() && this.f422b.length() == 0);
        }

        public final void f() {
            c();
            this.f423c = false;
            this.f424d = false;
            this.f425e = 4;
            this.f426f = false;
            this.f427g = 0;
            this.f428h = 0;
            this.f429i = 0;
            this.f430j = 15;
            this.f431k = true;
            this.f432l = 0;
            this.f433m = 0;
            this.f434n = 0;
            int i10 = f418x;
            this.f435o = i10;
            this.f439s = f417w;
            this.f441u = i10;
        }

        public final void g(boolean z10, boolean z11) {
            if (this.f436p != -1) {
                if (!z10) {
                    this.f422b.setSpan(new StyleSpan(2), this.f436p, this.f422b.length(), 33);
                    this.f436p = -1;
                }
            } else if (z10) {
                this.f436p = this.f422b.length();
            }
            if (this.f437q == -1) {
                if (z11) {
                    this.f437q = this.f422b.length();
                }
            } else {
                if (z11) {
                    return;
                }
                this.f422b.setSpan(new UnderlineSpan(), this.f437q, this.f422b.length(), 33);
                this.f437q = -1;
            }
        }

        public final void h(int i10, int i11) {
            if (this.f438r != -1 && this.f439s != i10) {
                this.f422b.setSpan(new ForegroundColorSpan(this.f439s), this.f438r, this.f422b.length(), 33);
            }
            if (i10 != f417w) {
                this.f438r = this.f422b.length();
                this.f439s = i10;
            }
            if (this.f440t != -1 && this.f441u != i11) {
                this.f422b.setSpan(new BackgroundColorSpan(this.f441u), this.f440t, this.f422b.length(), 33);
            }
            if (i11 != f418x) {
                this.f440t = this.f422b.length();
                this.f441u = i11;
            }
        }
    }

    /* JADX INFO: renamed from: a5.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Cea708Decoder.java */
    public static final class C0008c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f443a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f444b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f445c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f446d = 0;

        public C0008c(int i10, int i11) {
            this.f443a = i10;
            this.f444b = i11;
            this.f445c = new byte[(i11 * 2) - 1];
        }
    }

    public c(int i10, List<byte[]> list) {
        this.f408j = i10 == -1 ? 1 : i10;
        if (list != null && (list.size() != 1 || list.get(0).length != 1 || list.get(0)[0] != 1)) {
        }
        this.f409k = new b[8];
        for (int i11 = 0; i11 < 8; i11++) {
            this.f409k[i11] = new b();
        }
        this.f410l = this.f409k[0];
    }

    @Override // a5.d
    public final g f() {
        List<z4.a> list = this.f411m;
        this.f412n = list;
        Objects.requireNonNull(list);
        return new e(list);
    }

    @Override // a5.d, q3.d
    public final void flush() {
        super.flush();
        this.f411m = null;
        this.f412n = null;
        this.f414p = 0;
        this.f410l = this.f409k[0];
        m();
        this.f413o = null;
    }

    @Override // a5.d
    public final void g(l lVar) {
        ByteBuffer byteBuffer = lVar.f13581j;
        Objects.requireNonNull(byteBuffer);
        this.f405g.B(byteBuffer.array(), byteBuffer.limit());
        while (true) {
            w wVar = this.f405g;
            if (wVar.f10477c - wVar.f10476b < 3) {
                return;
            }
            int iT = wVar.t() & 7;
            int i10 = iT & 3;
            boolean z10 = (iT & 4) == 4;
            byte bT = (byte) this.f405g.t();
            byte bT2 = (byte) this.f405g.t();
            if (i10 == 2 || i10 == 3) {
                if (z10) {
                    if (i10 == 3) {
                        k();
                        int i11 = (bT & 192) >> 6;
                        int i12 = this.f407i;
                        if (i12 != -1 && i11 != (i12 + 1) % 4) {
                            m();
                            p.g("Cea708Decoder", "Sequence number discontinuity. previous=" + this.f407i + " current=" + i11);
                        }
                        this.f407i = i11;
                        int i13 = bT & 63;
                        if (i13 == 0) {
                            i13 = 64;
                        }
                        C0008c c0008c = new C0008c(i11, i13);
                        this.f413o = c0008c;
                        byte[] bArr = c0008c.f445c;
                        int i14 = c0008c.f446d;
                        c0008c.f446d = i14 + 1;
                        bArr[i14] = bT2;
                    } else {
                        m5.a.a(i10 == 2);
                        C0008c c0008c2 = this.f413o;
                        if (c0008c2 == null) {
                            p.c("Cea708Decoder", "Encountered DTVCC_PACKET_DATA before DTVCC_PACKET_START");
                        } else {
                            byte[] bArr2 = c0008c2.f445c;
                            int i15 = c0008c2.f446d;
                            int i16 = i15 + 1;
                            c0008c2.f446d = i16;
                            bArr2[i15] = bT;
                            c0008c2.f446d = i16 + 1;
                            bArr2[i16] = bT2;
                        }
                    }
                    C0008c c0008c3 = this.f413o;
                    if (c0008c3.f446d == (c0008c3.f444b * 2) - 1) {
                        k();
                    }
                }
            }
        }
    }

    @Override // a5.d
    public final boolean i() {
        return this.f411m != this.f412n;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:222:0x05b0  */
    /* JADX WARN: Type inference failed for: r0v68, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
    /* JADX WARN: Type inference failed for: r0v70, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
    /* JADX WARN: Type inference failed for: r0v71, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
    public final void k() {
        C0008c c0008c = this.f413o;
        if (c0008c == null) {
            return;
        }
        int i10 = 2;
        if (c0008c.f446d != (c0008c.f444b * 2) - 1) {
            StringBuilder sbC = a0.b.c("DtvCcPacket ended prematurely; size is ");
            sbC.append((this.f413o.f444b * 2) - 1);
            sbC.append(", but current index is ");
            sbC.append(this.f413o.f446d);
            sbC.append(" (sequence number ");
            sbC.append(this.f413o.f443a);
            sbC.append(");");
            p.b("Cea708Decoder", sbC.toString());
        }
        v vVar = this.f406h;
        C0008c c0008c2 = this.f413o;
        vVar.j(c0008c2.f445c, c0008c2.f446d);
        boolean z10 = false;
        while (this.f406h.b() > 0) {
            int i11 = 3;
            int iG = this.f406h.g(3);
            int iG2 = this.f406h.g(5);
            int i12 = 7;
            if (iG == 7) {
                this.f406h.m(i10);
                iG = this.f406h.g(6);
                if (iG < 7) {
                    da.c.b("Invalid extended service number: ", iG, "Cea708Decoder");
                }
            }
            if (iG2 == 0) {
                if (iG != 0) {
                    p.g("Cea708Decoder", "serviceNumber is non-zero (" + iG + ") when blockSize is 0");
                }
                if (z10) {
                    this.f411m = l();
                }
                this.f413o = null;
            }
            if (iG != this.f408j) {
                this.f406h.n(iG2);
            } else {
                int iE = (iG2 * 8) + this.f406h.e();
                while (this.f406h.e() < iE) {
                    int iG3 = this.f406h.g(8);
                    if (iG3 == 16) {
                        int iG4 = this.f406h.g(8);
                        if (iG4 <= 31) {
                            if (iG4 > 7) {
                                if (iG4 <= 15) {
                                    this.f406h.m(8);
                                } else if (iG4 <= 23) {
                                    this.f406h.m(16);
                                } else if (iG4 <= 31) {
                                    this.f406h.m(24);
                                }
                            }
                            i12 = 7;
                        } else {
                            i12 = 7;
                            if (iG4 <= 127) {
                                if (iG4 == 32) {
                                    this.f410l.a(SafeJsonPrimitive.NULL_CHAR);
                                } else if (iG4 == 33) {
                                    this.f410l.a((char) 160);
                                } else if (iG4 == 37) {
                                    this.f410l.a((char) 8230);
                                } else if (iG4 == 42) {
                                    this.f410l.a((char) 352);
                                } else if (iG4 == 44) {
                                    this.f410l.a((char) 338);
                                } else if (iG4 == 63) {
                                    this.f410l.a((char) 376);
                                } else if (iG4 == 57) {
                                    this.f410l.a((char) 8482);
                                } else if (iG4 == 58) {
                                    this.f410l.a((char) 353);
                                } else if (iG4 == 60) {
                                    this.f410l.a((char) 339);
                                } else if (iG4 != 61) {
                                    switch (iG4) {
                                        case 48:
                                            this.f410l.a((char) 9608);
                                            break;
                                        case 49:
                                            this.f410l.a((char) 8216);
                                            break;
                                        case 50:
                                            this.f410l.a((char) 8217);
                                            break;
                                        case 51:
                                            this.f410l.a((char) 8220);
                                            break;
                                        case 52:
                                            this.f410l.a((char) 8221);
                                            break;
                                        case 53:
                                            this.f410l.a((char) 8226);
                                            break;
                                        default:
                                            switch (iG4) {
                                                case 118:
                                                    this.f410l.a((char) 8539);
                                                    break;
                                                case 119:
                                                    this.f410l.a((char) 8540);
                                                    break;
                                                case 120:
                                                    this.f410l.a((char) 8541);
                                                    break;
                                                case 121:
                                                    this.f410l.a((char) 8542);
                                                    break;
                                                case 122:
                                                    this.f410l.a((char) 9474);
                                                    break;
                                                case 123:
                                                    this.f410l.a((char) 9488);
                                                    break;
                                                case 124:
                                                    this.f410l.a((char) 9492);
                                                    break;
                                                case 125:
                                                    this.f410l.a((char) 9472);
                                                    break;
                                                case 126:
                                                    this.f410l.a((char) 9496);
                                                    break;
                                                case 127:
                                                    this.f410l.a((char) 9484);
                                                    break;
                                                default:
                                                    da.c.b("Invalid G2 character: ", iG4, "Cea708Decoder");
                                                    break;
                                            }
                                            break;
                                    }
                                } else {
                                    this.f410l.a((char) 8480);
                                }
                                z10 = true;
                            } else if (iG4 > 159) {
                                if (iG4 <= 255) {
                                    if (iG4 == 160) {
                                        this.f410l.a((char) 13252);
                                    } else {
                                        da.c.b("Invalid G3 character: ", iG4, "Cea708Decoder");
                                        this.f410l.a('_');
                                    }
                                    z10 = true;
                                } else {
                                    da.c.b("Invalid extended command: ", iG4, "Cea708Decoder");
                                }
                                i10 = 2;
                            } else if (iG4 <= 135) {
                                this.f406h.m(32);
                            } else if (iG4 <= 143) {
                                this.f406h.m(40);
                            } else if (iG4 <= 159) {
                                i10 = 2;
                                this.f406h.m(2);
                                this.f406h.m(this.f406h.g(6) * 8);
                            }
                        }
                        i10 = 2;
                    } else if (iG3 <= 31) {
                        if (iG3 != 0) {
                            if (iG3 == i11) {
                                this.f411m = l();
                            } else if (iG3 != 8) {
                                switch (iG3) {
                                    case 12:
                                        m();
                                        break;
                                    case 13:
                                        this.f410l.a('\n');
                                        break;
                                    case 14:
                                        break;
                                    default:
                                        if (iG3 >= 17 && iG3 <= 23) {
                                            da.c.b("Currently unsupported COMMAND_EXT1 Command: ", iG3, "Cea708Decoder");
                                            this.f406h.m(8);
                                        } else if (iG3 < 24 || iG3 > 31) {
                                            da.c.b("Invalid C0 command: ", iG3, "Cea708Decoder");
                                        } else {
                                            da.c.b("Currently unsupported COMMAND_P16 Command: ", iG3, "Cea708Decoder");
                                            this.f406h.m(16);
                                        }
                                        break;
                                }
                            } else {
                                b bVar = this.f410l;
                                int length = bVar.f422b.length();
                                if (length > 0) {
                                    bVar.f422b.delete(length - 1, length);
                                }
                            }
                        }
                    } else if (iG3 <= 127) {
                        if (iG3 == 127) {
                            this.f410l.a((char) 9835);
                        } else {
                            this.f410l.a((char) (iG3 & 255));
                        }
                        z10 = true;
                    } else {
                        if (iG3 <= 159) {
                            switch (iG3) {
                                case 128:
                                case 129:
                                case 130:
                                case 131:
                                case 132:
                                case 133:
                                case 134:
                                case 135:
                                    z10 = true;
                                    int i13 = iG3 - 128;
                                    if (this.f414p != i13) {
                                        this.f414p = i13;
                                        this.f410l = this.f409k[i13];
                                    }
                                    break;
                                case 136:
                                    z10 = true;
                                    for (int i14 = 1; i14 <= 8; i14++) {
                                        if (this.f406h.f()) {
                                            this.f409k[8 - i14].c();
                                        }
                                    }
                                    break;
                                case 137:
                                    for (int i15 = 1; i15 <= 8; i15++) {
                                        if (this.f406h.f()) {
                                            this.f409k[8 - i15].f424d = true;
                                        }
                                    }
                                    z10 = true;
                                    break;
                                case 138:
                                    for (int i16 = 1; i16 <= 8; i16++) {
                                        if (this.f406h.f()) {
                                            this.f409k[8 - i16].f424d = false;
                                        }
                                    }
                                    z10 = true;
                                    break;
                                case 139:
                                    for (int i17 = 1; i17 <= 8; i17++) {
                                        if (this.f406h.f()) {
                                            b bVar2 = this.f409k[8 - i17];
                                            bVar2.f424d = !bVar2.f424d;
                                        }
                                    }
                                    z10 = true;
                                    break;
                                case 140:
                                    for (int i18 = 1; i18 <= 8; i18++) {
                                        if (this.f406h.f()) {
                                            this.f409k[8 - i18].f();
                                        }
                                    }
                                    z10 = true;
                                    break;
                                case 141:
                                    this.f406h.m(8);
                                    z10 = true;
                                    break;
                                case 142:
                                    z10 = true;
                                    break;
                                case 143:
                                    m();
                                    z10 = true;
                                    break;
                                case 144:
                                    if (this.f410l.f423c) {
                                        this.f406h.g(4);
                                        this.f406h.g(2);
                                        this.f406h.g(2);
                                        boolean zF = this.f406h.f();
                                        boolean zF2 = this.f406h.f();
                                        i11 = 3;
                                        this.f406h.g(3);
                                        this.f406h.g(3);
                                        this.f410l.g(zF, zF2);
                                    } else {
                                        this.f406h.m(16);
                                        i11 = 3;
                                    }
                                    z10 = true;
                                    break;
                                case 145:
                                    if (this.f410l.f423c) {
                                        int iD = b.d(this.f406h.g(2), this.f406h.g(2), this.f406h.g(2), this.f406h.g(2));
                                        int iD2 = b.d(this.f406h.g(2), this.f406h.g(2), this.f406h.g(2), this.f406h.g(2));
                                        this.f406h.m(2);
                                        b.d(this.f406h.g(2), this.f406h.g(2), this.f406h.g(2), 0);
                                        this.f410l.h(iD, iD2);
                                    } else {
                                        this.f406h.m(24);
                                    }
                                    i11 = 3;
                                    z10 = true;
                                    break;
                                case 146:
                                    if (this.f410l.f423c) {
                                        this.f406h.m(4);
                                        int iG5 = this.f406h.g(4);
                                        this.f406h.m(2);
                                        this.f406h.g(6);
                                        b bVar3 = this.f410l;
                                        if (bVar3.f442v != iG5) {
                                            bVar3.a('\n');
                                        }
                                        bVar3.f442v = iG5;
                                    } else {
                                        this.f406h.m(16);
                                    }
                                    i11 = 3;
                                    z10 = true;
                                    break;
                                case 147:
                                case 148:
                                case 149:
                                case 150:
                                default:
                                    z10 = true;
                                    da.c.b("Invalid C1 command: ", iG3, "Cea708Decoder");
                                    break;
                                case 151:
                                    if (this.f410l.f423c) {
                                        int iD3 = b.d(this.f406h.g(2), this.f406h.g(2), this.f406h.g(2), this.f406h.g(2));
                                        this.f406h.g(2);
                                        b.d(this.f406h.g(2), this.f406h.g(2), this.f406h.g(2), 0);
                                        this.f406h.f();
                                        this.f406h.f();
                                        this.f406h.g(2);
                                        this.f406h.g(2);
                                        int iG6 = this.f406h.g(2);
                                        this.f406h.m(8);
                                        b bVar4 = this.f410l;
                                        bVar4.f435o = iD3;
                                        bVar4.f432l = iG6;
                                    } else {
                                        this.f406h.m(32);
                                    }
                                    i11 = 3;
                                    z10 = true;
                                    break;
                                case 152:
                                case 153:
                                case 154:
                                case 155:
                                case 156:
                                case 157:
                                case 158:
                                case 159:
                                    int i19 = iG3 - 152;
                                    b bVar5 = this.f409k[i19];
                                    this.f406h.m(i10);
                                    boolean zF3 = this.f406h.f();
                                    boolean zF4 = this.f406h.f();
                                    this.f406h.f();
                                    int iG7 = this.f406h.g(i11);
                                    boolean zF5 = this.f406h.f();
                                    int iG8 = this.f406h.g(i12);
                                    int iG9 = this.f406h.g(8);
                                    int iG10 = this.f406h.g(4);
                                    int iG11 = this.f406h.g(4);
                                    this.f406h.m(i10);
                                    this.f406h.g(6);
                                    this.f406h.m(i10);
                                    int iG12 = this.f406h.g(3);
                                    int iG13 = this.f406h.g(3);
                                    bVar5.f423c = true;
                                    bVar5.f424d = zF3;
                                    bVar5.f431k = zF4;
                                    bVar5.f425e = iG7;
                                    bVar5.f426f = zF5;
                                    bVar5.f427g = iG8;
                                    bVar5.f428h = iG9;
                                    bVar5.f429i = iG10;
                                    int i20 = iG11 + 1;
                                    if (bVar5.f430j != i20) {
                                        bVar5.f430j = i20;
                                        while (true) {
                                            if ((zF4 && bVar5.f421a.size() >= bVar5.f430j) || bVar5.f421a.size() >= 15) {
                                                bVar5.f421a.remove(0);
                                            }
                                        }
                                    }
                                    if (iG12 != 0 && bVar5.f433m != iG12) {
                                        bVar5.f433m = iG12;
                                        int i21 = iG12 - 1;
                                        int i22 = b.C[i21];
                                        boolean z11 = b.B[i21];
                                        int i23 = b.f420z[i21];
                                        int i24 = b.A[i21];
                                        int i25 = b.f419y[i21];
                                        bVar5.f435o = i22;
                                        bVar5.f432l = i25;
                                    }
                                    if (iG13 != 0 && bVar5.f434n != iG13) {
                                        bVar5.f434n = iG13;
                                        int i26 = iG13 - 1;
                                        int i27 = b.E[i26];
                                        int i28 = b.D[i26];
                                        bVar5.g(false, false);
                                        int i29 = b.f417w;
                                        int i30 = b.F[i26];
                                        int i31 = b.f418x;
                                        bVar5.h(i29, i30);
                                    }
                                    if (this.f414p != i19) {
                                        this.f414p = i19;
                                        this.f410l = this.f409k[i19];
                                    }
                                    i11 = 3;
                                    z10 = true;
                                    break;
                            }
                        } else if (iG3 <= 255) {
                            this.f410l.a((char) (iG3 & 255));
                            z10 = true;
                        } else {
                            da.c.b("Invalid base command: ", iG3, "Cea708Decoder");
                        }
                        i10 = 2;
                        i12 = 7;
                    }
                }
            }
        }
        if (z10) {
            this.f411m = l();
        }
        this.f413o = null;
    }

    /* JADX WARN: Type inference failed for: r7v0, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.util.ArrayList, java.util.List<android.text.SpannableString>] */
    public final List<z4.a> l() {
        Layout.Alignment alignment;
        float f10;
        float f11;
        a aVar;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 8; i10++) {
            if (!this.f409k[i10].e()) {
                b[] bVarArr = this.f409k;
                if (bVarArr[i10].f424d) {
                    b bVar = bVarArr[i10];
                    if (bVar.e()) {
                        aVar = null;
                    } else {
                        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                        for (int i11 = 0; i11 < bVar.f421a.size(); i11++) {
                            spannableStringBuilder.append((CharSequence) bVar.f421a.get(i11));
                            spannableStringBuilder.append('\n');
                        }
                        spannableStringBuilder.append((CharSequence) bVar.b());
                        int i12 = bVar.f432l;
                        if (i12 == 0) {
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                        } else if (i12 == 1) {
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                        } else if (i12 != 2) {
                            if (i12 != 3) {
                                StringBuilder sbC = a0.b.c("Unexpected justification value: ");
                                sbC.append(bVar.f432l);
                                throw new IllegalArgumentException(sbC.toString());
                            }
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                        } else {
                            alignment = Layout.Alignment.ALIGN_CENTER;
                        }
                        Layout.Alignment alignment2 = alignment;
                        if (bVar.f426f) {
                            f10 = bVar.f428h / 99.0f;
                            f11 = bVar.f427g / 99.0f;
                        } else {
                            f10 = bVar.f428h / 209.0f;
                            f11 = bVar.f427g / 74.0f;
                        }
                        float f12 = (f10 * 0.9f) + 0.05f;
                        float f13 = (f11 * 0.9f) + 0.05f;
                        int i13 = bVar.f429i;
                        int i14 = i13 / 3;
                        int i15 = i14 == 0 ? 0 : i14 == 1 ? 1 : 2;
                        int i16 = i13 % 3;
                        int i17 = i16 == 0 ? 0 : i16 == 1 ? 1 : 2;
                        int i18 = bVar.f435o;
                        aVar = new a(spannableStringBuilder, alignment2, f13, i15, f12, i17, i18 != b.f418x, i18, bVar.f425e);
                    }
                    if (aVar != null) {
                        arrayList.add(aVar);
                    }
                } else {
                    continue;
                }
            }
        }
        Collections.sort(arrayList, new Comparator() { // from class: a5.b
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.compare(((c.a) obj2).f416b, ((c.a) obj).f416b);
            }
        });
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (int i19 = 0; i19 < arrayList.size(); i19++) {
            arrayList2.add(((a) arrayList.get(i19)).f415a);
        }
        return Collections.unmodifiableList(arrayList2);
    }

    public final void m() {
        for (int i10 = 0; i10 < 8; i10++) {
            this.f409k[i10].f();
        }
    }
}
