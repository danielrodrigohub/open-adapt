package n2;

import android.graphics.Bitmap;
import android.util.Log;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: compiled from: StandardGifDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f11198a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a.InterfaceC0212a f11200c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public ByteBuffer f11201d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f11202e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public short[] f11203f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f11204g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f11205h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f11206i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int[] f11207j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f11208k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public c f11209l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Bitmap f11210m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f11211n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f11212o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f11213p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f11214q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f11215r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Boolean f11216s;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f11199b = new int[256];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Bitmap.Config f11217t = Bitmap.Config.ARGB_8888;

    /* JADX WARN: Type inference failed for: r4v4, types: [java.util.ArrayList, java.util.List<n2.b>] */
    public e(a.InterfaceC0212a interfaceC0212a, c cVar, ByteBuffer byteBuffer, int i10) {
        this.f11200c = interfaceC0212a;
        this.f11209l = new c();
        synchronized (this) {
            try {
                if (i10 <= 0) {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i10);
                }
                int iHighestOneBit = Integer.highestOneBit(i10);
                this.f11212o = 0;
                this.f11209l = cVar;
                this.f11208k = -1;
                ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f11201d = byteBufferAsReadOnlyBuffer;
                byteBufferAsReadOnlyBuffer.position(0);
                this.f11201d.order(ByteOrder.LITTLE_ENDIAN);
                this.f11211n = false;
                Iterator it = cVar.f11187e.iterator();
                while (it.hasNext()) {
                    if (((b) it.next()).f11178g == 3) {
                        this.f11211n = true;
                        break;
                    }
                }
                this.f11213p = iHighestOneBit;
                int i11 = cVar.f11188f;
                this.f11215r = i11 / iHighestOneBit;
                int i12 = cVar.f11189g;
                this.f11214q = i12 / iHighestOneBit;
                this.f11206i = ((c3.b) this.f11200c).a(i11 * i12);
                a.InterfaceC0212a interfaceC0212a2 = this.f11200c;
                int i13 = this.f11215r * this.f11214q;
                s2.b bVar = ((c3.b) interfaceC0212a2).f3834b;
                this.f11207j = bVar == null ? new int[i13] : (int[]) bVar.d(i13, int[].class);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // n2.a
    public final int a() {
        return this.f11208k;
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [java.util.ArrayList, java.util.List<n2.b>] */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.util.ArrayList, java.util.List<n2.b>] */
    @Override // n2.a
    public final synchronized Bitmap b() {
        if (this.f11209l.f11185c <= 0 || this.f11208k < 0) {
            if (Log.isLoggable("e", 3)) {
                Log.d("e", "Unable to decode frame, frameCount=" + this.f11209l.f11185c + ", framePointer=" + this.f11208k);
            }
            this.f11212o = 1;
        }
        int i10 = this.f11212o;
        if (i10 != 1 && i10 != 2) {
            this.f11212o = 0;
            if (this.f11202e == null) {
                this.f11202e = ((c3.b) this.f11200c).a(255);
            }
            b bVar = (b) this.f11209l.f11187e.get(this.f11208k);
            int i11 = this.f11208k - 1;
            b bVar2 = i11 >= 0 ? (b) this.f11209l.f11187e.get(i11) : null;
            int[] iArr = bVar.f11182k;
            if (iArr == null) {
                iArr = this.f11209l.f11183a;
            }
            this.f11198a = iArr;
            if (iArr == null) {
                if (Log.isLoggable("e", 3)) {
                    Log.d("e", "No valid color table found for frame #" + this.f11208k);
                }
                this.f11212o = 1;
                return null;
            }
            if (bVar.f11177f) {
                System.arraycopy(iArr, 0, this.f11199b, 0, iArr.length);
                int[] iArr2 = this.f11199b;
                this.f11198a = iArr2;
                iArr2[bVar.f11179h] = 0;
                if (bVar.f11178g == 2 && this.f11208k == 0) {
                    this.f11216s = Boolean.TRUE;
                }
            }
            return j(bVar, bVar2);
        }
        if (Log.isLoggable("e", 3)) {
            Log.d("e", "Unable to decode frame, status=" + this.f11212o);
        }
        return null;
    }

    @Override // n2.a
    public final void c() {
        this.f11208k = (this.f11208k + 1) % this.f11209l.f11185c;
    }

    @Override // n2.a
    public final void clear() {
        s2.b bVar;
        s2.b bVar2;
        s2.b bVar3;
        this.f11209l = null;
        byte[] bArr = this.f11206i;
        if (bArr != null && (bVar3 = ((c3.b) this.f11200c).f3834b) != null) {
            bVar3.c(bArr);
        }
        int[] iArr = this.f11207j;
        if (iArr != null && (bVar2 = ((c3.b) this.f11200c).f3834b) != null) {
            bVar2.c(iArr);
        }
        Bitmap bitmap = this.f11210m;
        if (bitmap != null) {
            ((c3.b) this.f11200c).f3833a.e(bitmap);
        }
        this.f11210m = null;
        this.f11201d = null;
        this.f11216s = null;
        byte[] bArr2 = this.f11202e;
        if (bArr2 == null || (bVar = ((c3.b) this.f11200c).f3834b) == null) {
            return;
        }
        bVar.c(bArr2);
    }

    @Override // n2.a
    public final int d() {
        return this.f11209l.f11185c;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.ArrayList, java.util.List<n2.b>] */
    @Override // n2.a
    public final int e() {
        int i10;
        c cVar = this.f11209l;
        int i11 = cVar.f11185c;
        if (i11 <= 0 || (i10 = this.f11208k) < 0) {
            return 0;
        }
        if (i10 < 0 || i10 >= i11) {
            return -1;
        }
        return ((b) cVar.f11187e.get(i10)).f11180i;
    }

    @Override // n2.a
    public final int f() {
        return (this.f11207j.length * 4) + this.f11201d.limit() + this.f11206i.length;
    }

    @Override // n2.a
    public final ByteBuffer g() {
        return this.f11201d;
    }

    public final Bitmap h() {
        Boolean bool = this.f11216s;
        Bitmap.Config config = (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f11217t;
        Bitmap bitmapC = ((c3.b) this.f11200c).f3833a.c(this.f11215r, this.f11214q, config);
        bitmapC.setHasAlpha(true);
        return bitmapC;
    }

    public final void i(Bitmap.Config config) {
        if (config == Bitmap.Config.ARGB_8888 || config == Bitmap.Config.RGB_565) {
            this.f11217t = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + Bitmap.Config.ARGB_8888 + " or " + Bitmap.Config.RGB_565);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0047  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v33, types: [short] */
    /* JADX WARN: Type inference failed for: r5v35 */
    public final Bitmap j(b bVar, b bVar2) {
        byte b10;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        short s10;
        int i20;
        Bitmap bitmap;
        int i21;
        int[] iArr = this.f11207j;
        byte b11 = 0;
        if (bVar2 == null) {
            Bitmap bitmap2 = this.f11210m;
            if (bitmap2 != null) {
                ((c3.b) this.f11200c).f3833a.e(bitmap2);
            }
            this.f11210m = null;
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && bVar2.f11178g == 3 && this.f11210m == null) {
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && (i20 = bVar2.f11178g) > 0) {
            if (i20 == 2) {
                if (bVar.f11177f) {
                    i21 = 0;
                } else {
                    c cVar = this.f11209l;
                    i21 = cVar.f11193k;
                    if (bVar.f11182k != null && cVar.f11192j == bVar.f11179h) {
                        i21 = 0;
                    }
                }
                int i22 = bVar2.f11175d;
                int i23 = this.f11213p;
                int i24 = i22 / i23;
                int i25 = bVar2.f11173b / i23;
                int i26 = bVar2.f11174c / i23;
                int i27 = bVar2.f11172a / i23;
                int i28 = this.f11215r;
                int i29 = (i25 * i28) + i27;
                int i30 = (i24 * i28) + i29;
                while (i29 < i30) {
                    int i31 = i29 + i26;
                    for (int i32 = i29; i32 < i31; i32++) {
                        iArr[i32] = i21;
                    }
                    i29 += this.f11215r;
                }
            } else if (i20 == 3 && (bitmap = this.f11210m) != null) {
                int i33 = this.f11215r;
                bitmap.getPixels(iArr, 0, i33, 0, 0, i33, this.f11214q);
            }
        }
        this.f11201d.position(bVar.f11181j);
        int i34 = bVar.f11174c * bVar.f11175d;
        byte[] bArr = this.f11206i;
        if (bArr == null || bArr.length < i34) {
            this.f11206i = ((c3.b) this.f11200c).a(i34);
        }
        byte[] bArr2 = this.f11206i;
        if (this.f11203f == null) {
            this.f11203f = new short[AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH];
        }
        short[] sArr = this.f11203f;
        if (this.f11204g == null) {
            this.f11204g = new byte[AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH];
        }
        byte[] bArr3 = this.f11204g;
        if (this.f11205h == null) {
            this.f11205h = new byte[4097];
        }
        byte[] bArr4 = this.f11205h;
        int i35 = this.f11201d.get() & 255;
        int i36 = 1 << i35;
        int i37 = i36 + 1;
        int i38 = i36 + 2;
        int i39 = i35 + 1;
        int i40 = (1 << i39) - 1;
        for (int i41 = 0; i41 < i36; i41++) {
            sArr[i41] = 0;
            bArr3[i41] = (byte) i41;
        }
        byte[] bArr5 = this.f11202e;
        e eVar = this;
        int i42 = i39;
        int i43 = 0;
        int i44 = 0;
        int i45 = 0;
        int i46 = 0;
        int i47 = 0;
        int i48 = 0;
        int i49 = 0;
        int i50 = 0;
        int i51 = i38;
        int i52 = i40;
        int i53 = -1;
        while (true) {
            if (i43 >= i34) {
                iArr = iArr;
                b10 = b11;
                break;
            }
            if (i45 == 0) {
                int i54 = eVar.f11201d.get() & 255;
                if (i54 > 0) {
                    ByteBuffer byteBuffer = eVar.f11201d;
                    byteBuffer.get(eVar.f11202e, 0, Math.min(i54, byteBuffer.remaining()));
                }
                if (i54 <= 0) {
                    eVar.f11212o = 3;
                    b10 = 0;
                    break;
                }
                i45 = i54;
                i46 = 0;
            } else {
                i39 = i39;
                i43 = i43;
                iArr = iArr;
                i53 = i53;
            }
            i48 += (bArr5[i46] & 255) << i47;
            i46++;
            i45--;
            int i55 = i47 + 8;
            int i56 = i51;
            int i57 = i42;
            i43 = i43;
            i53 = i53;
            byte[] bArr6 = bArr5;
            i49 = i49;
            while (true) {
                if (i55 < i57) {
                    eVar = this;
                    break;
                }
                e eVar2 = eVar;
                int i58 = i48 & i52;
                i48 >>= i57;
                i55 -= i57;
                if (i58 == i36) {
                    i18 = i55;
                    i56 = i38;
                    i52 = i40;
                    eVar = eVar2;
                    i57 = i39;
                    i53 = -1;
                    i19 = i49;
                } else {
                    if (i58 == i37) {
                        eVar = eVar2;
                        break;
                    }
                    i18 = i55;
                    if (i53 == -1) {
                        bArr2[i44] = bArr3[i58];
                        i44++;
                        i43++;
                        i49 = i58;
                        i53 = i49;
                        i55 = i18;
                        eVar = this;
                    } else {
                        if (i58 >= i56) {
                            bArr4[i50] = (byte) i49;
                            i50++;
                            s10 = i53;
                        } else {
                            s10 = i58;
                        }
                        while (s10 >= i36) {
                            bArr4[i50] = bArr3[s10];
                            i50++;
                            s10 = sArr[s10];
                        }
                        int i59 = bArr3[s10] & 255;
                        byte b12 = (byte) i59;
                        bArr2[i44] = b12;
                        while (true) {
                            i44++;
                            i43++;
                            if (i50 <= 0) {
                                break;
                            }
                            i50--;
                            bArr2[i44] = bArr4[i50];
                        }
                        i19 = i59;
                        if (i56 < 4096) {
                            sArr[i56] = (short) i53;
                            bArr3[i56] = b12;
                            i56++;
                            if ((i56 & i52) == 0 && i56 < 4096) {
                                i57++;
                                i52 += i56;
                            }
                        }
                        i53 = i58;
                        eVar = this;
                    }
                }
                i49 = i19;
                i55 = i18;
            }
            i42 = i57;
            i51 = i56;
            bArr5 = bArr6;
            i39 = i39;
            b11 = 0;
            i47 = i55;
            iArr = iArr;
        }
        Arrays.fill(bArr2, i44, i34, b10);
        if (bVar.f11176e || this.f11213p != 1) {
            int[] iArr2 = this.f11207j;
            int i60 = bVar.f11175d;
            int i61 = this.f11213p;
            int i62 = i60 / i61;
            int i63 = bVar.f11173b / i61;
            int i64 = bVar.f11174c / i61;
            int i65 = bVar.f11172a / i61;
            boolean z10 = this.f11208k == 0;
            int i66 = this.f11215r;
            int i67 = this.f11214q;
            byte[] bArr7 = this.f11206i;
            int[] iArr3 = this.f11198a;
            Boolean bool = this.f11216s;
            int i68 = 8;
            int i69 = 0;
            int i70 = 0;
            int i71 = 1;
            while (i69 < i62) {
                Boolean bool2 = bool;
                if (bVar.f11176e) {
                    if (i70 >= i62) {
                        int i72 = i71 + 1;
                        i10 = i62;
                        if (i72 == 2) {
                            i70 = 4;
                            i71 = i72;
                        } else if (i72 != 3) {
                            i71 = i72;
                            if (i72 == 4) {
                                i70 = 1;
                                i68 = 2;
                            }
                        } else {
                            i68 = 4;
                            i71 = i72;
                            i70 = 2;
                        }
                    } else {
                        i10 = i62;
                    }
                    i11 = i70 + i68;
                } else {
                    i10 = i62;
                    i11 = i70;
                    i70 = i69;
                }
                int i73 = i70 + i63;
                boolean z11 = i61 == 1;
                if (i73 < i67) {
                    int i74 = i73 * i66;
                    int i75 = i74 + i65;
                    int i76 = i75 + i64;
                    int i77 = i74 + i66;
                    if (i77 < i76) {
                        i76 = i77;
                    }
                    int i78 = i69 * i61 * bVar.f11174c;
                    if (z11) {
                        bool = bool2;
                        int i79 = i75;
                        while (true) {
                            i12 = i64;
                            if (i79 >= i76) {
                                break;
                            }
                            int i80 = iArr3[bArr7[i78] & 255];
                            if (i80 != 0) {
                                iArr2[i79] = i80;
                            } else if (z10 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i78 += i61;
                            i79++;
                            i64 = i12;
                        }
                    } else {
                        i12 = i64;
                        int i81 = ((i76 - i75) * i61) + i78;
                        bool = bool2;
                        int i82 = i75;
                        while (i82 < i76) {
                            int i83 = i76;
                            int i84 = bVar.f11174c;
                            int i85 = i65;
                            int i86 = i66;
                            int i87 = i78;
                            int i88 = 0;
                            int i89 = 0;
                            int i90 = 0;
                            int i91 = 0;
                            int i92 = 0;
                            while (true) {
                                if (i87 >= this.f11213p + i78) {
                                    i16 = i67;
                                    break;
                                }
                                byte[] bArr8 = this.f11206i;
                                i16 = i67;
                                if (i87 >= bArr8.length || i87 >= i81) {
                                    break;
                                }
                                int i93 = this.f11198a[bArr8[i87] & 255];
                                if (i93 != 0) {
                                    i88 += (i93 >> 24) & 255;
                                    i89 += (i93 >> 16) & 255;
                                    i90 += (i93 >> 8) & 255;
                                    i91 += i93 & 255;
                                    i92++;
                                }
                                i87++;
                                i67 = i16;
                            }
                            int i94 = i84 + i78;
                            for (int i95 = i94; i95 < this.f11213p + i94; i95++) {
                                byte[] bArr9 = this.f11206i;
                                if (i95 >= bArr9.length || i95 >= i81) {
                                    break;
                                }
                                int i96 = this.f11198a[bArr9[i95] & 255];
                                if (i96 != 0) {
                                    i88 += (i96 >> 24) & 255;
                                    i89 += (i96 >> 16) & 255;
                                    i90 += (i96 >> 8) & 255;
                                    i91 += i96 & 255;
                                    i92++;
                                }
                            }
                            int i97 = i92 == 0 ? 0 : ((i88 / i92) << 24) | ((i89 / i92) << 16) | ((i90 / i92) << 8) | (i91 / i92);
                            if (i97 != 0) {
                                iArr2[i82] = i97;
                            } else if (z10 && bool == null) {
                                bool = Boolean.TRUE;
                            }
                            i78 += i61;
                            i82++;
                            i76 = i83;
                            i65 = i85;
                            i66 = i86;
                            i67 = i16;
                        }
                    }
                    i13 = i65;
                    i14 = i66;
                    i15 = i67;
                } else {
                    i12 = i64;
                    i13 = i65;
                    i14 = i66;
                    i15 = i67;
                    bool = bool2;
                }
                i69++;
                i62 = i10;
                i70 = i11;
                i63 = i63;
                i64 = i12;
                i65 = i13;
                i66 = i14;
                i67 = i15;
            }
            Boolean bool3 = bool;
            if (this.f11216s == null) {
                this.f11216s = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
            }
        } else {
            int[] iArr4 = this.f11207j;
            int i98 = bVar.f11175d;
            int i99 = bVar.f11173b;
            int i100 = bVar.f11174c;
            int i101 = bVar.f11172a;
            byte b13 = this.f11208k == 0 ? (byte) 1 : b10;
            int i102 = this.f11215r;
            byte[] bArr10 = this.f11206i;
            int[] iArr5 = this.f11198a;
            byte b14 = -1;
            for (int i103 = b10; i103 < i98; i103++) {
                int i104 = (i103 + i99) * i102;
                int i105 = i104 + i101;
                int i106 = i105 + i100;
                int i107 = i104 + i102;
                if (i107 < i106) {
                    i106 = i107;
                }
                int i108 = bVar.f11174c * i103;
                while (i105 < i106) {
                    int i109 = i98;
                    byte b15 = bArr10[i108];
                    int i110 = i99;
                    int i111 = b15 & 255;
                    if (i111 != b14) {
                        int i112 = iArr5[i111];
                        if (i112 != 0) {
                            iArr4[i105] = i112;
                        } else {
                            b14 = b15;
                        }
                    }
                    i108++;
                    i105++;
                    i98 = i109;
                    i99 = i110;
                }
            }
            Boolean bool4 = this.f11216s;
            this.f11216s = Boolean.valueOf((bool4 != null && bool4.booleanValue()) || !(this.f11216s != null || b13 == 0 || b14 == -1));
        }
        if (this.f11211n && ((i17 = bVar.f11178g) == 0 || i17 == 1)) {
            if (this.f11210m == null) {
                this.f11210m = h();
            }
            Bitmap bitmap3 = this.f11210m;
            int i113 = this.f11215r;
            bitmap3.setPixels(iArr, 0, i113, 0, 0, i113, this.f11214q);
        }
        Bitmap bitmapH = h();
        int i114 = this.f11215r;
        bitmapH.setPixels(iArr, 0, i114, 0, 0, i114, this.f11214q);
        return bitmapH;
    }
}
