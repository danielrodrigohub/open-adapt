package x4;

import m5.g0;
import m5.p;
import n3.s0;
import s3.w;

/* JADX INFO: compiled from: RtpVp9Reader.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w4.f f17839a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public w f17840b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f17844f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f17841c = -9223372036854775807L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long f17842d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17843e = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17845g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f17846h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f17847i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f17848j = false;

    public l(w4.f fVar) {
        this.f17839a = fVar;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x005e  */
    /* JADX WARN: Code duplicated, block: B:20:0x0062  */
    /* JADX WARN: Code duplicated, block: B:21:0x0064  */
    /* JADX WARN: Code duplicated, block: B:24:0x006e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:28:0x007b  */
    /* JADX WARN: Code duplicated, block: B:29:0x007e  */
    /* JADX WARN: Code duplicated, block: B:31:0x0081  */
    /* JADX WARN: Code duplicated, block: B:33:0x008d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0098  */
    /* JADX WARN: Code duplicated, block: B:38:0x009b A[LOOP:0: B:37:0x0099->B:38:0x009b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:41:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:46:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:49:0x00cd A[LOOP:1: B:45:0x00bb->B:49:0x00cd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:52:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:54:0x00da  */
    /* JADX WARN: Code duplicated, block: B:59:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:68:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:70:0x0102  */
    /* JADX WARN: Code duplicated, block: B:74:0x012c  */
    /* JADX WARN: Code duplicated, block: B:76:0x0137  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:82:0x00cb A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:83:? A[RETURN, SYNTHETIC] */
    @Override // x4.i
    public final void a(m5.w wVar, long j10, int i10, boolean z10) {
        int i11;
        boolean z11;
        boolean z12;
        int iT;
        int i12;
        int iT2;
        int i13;
        int iY;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        s0 s0Var;
        m5.a.f(this.f17840b);
        int iT3 = wVar.t();
        if (this.f17847i) {
            int iA = w4.c.a(this.f17843e);
            if (i10 == iA) {
                if ((iT3 & 128) != 0) {
                    i11 = iT3 & 16;
                    if (i11 == 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    m5.a.b(z11, "VP9 flexible mode is not supported.");
                    if ((iT3 & 32) != 0) {
                        wVar.E(1);
                        if (wVar.f10477c - wVar.f10476b >= 1) {
                            if (i11 == 0) {
                                wVar.E(1);
                            }
                            if ((iT3 & 2) != 0) {
                                iT = wVar.t();
                                i12 = (iT >> 5) & 7;
                                if ((iT & 16) != 0) {
                                    i14 = i12 + 1;
                                    if (wVar.f10477c - wVar.f10476b < i14 * 4) {
                                        for (i15 = 0; i15 < i14; i15++) {
                                            this.f17845g = wVar.y();
                                            this.f17846h = wVar.y();
                                        }
                                        if ((iT & 8) != 0) {
                                            iT2 = wVar.t();
                                            if (wVar.f10477c - wVar.f10476b >= iT2) {
                                                i13 = 0;
                                                while (true) {
                                                    if (i13 >= iT2) {
                                                        iY = (wVar.y() & 12) >> 2;
                                                        if (wVar.f10477c - wVar.f10476b < iY) {
                                                            wVar.E(iY);
                                                            i13++;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else if ((iT & 8) != 0) {
                                    iT2 = wVar.t();
                                    if (wVar.f10477c - wVar.f10476b >= iT2) {
                                        i13 = 0;
                                        while (true) {
                                            if (i13 >= iT2) {
                                                iY = (wVar.y() & 12) >> 2;
                                                if (wVar.f10477c - wVar.f10476b < iY) {
                                                    wVar.E(iY);
                                                    i13++;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            z12 = true;
                        }
                    } else {
                        if ((iT3 & 2) != 0) {
                            iT = wVar.t();
                            i12 = (iT >> 5) & 7;
                            if ((iT & 16) != 0) {
                                i14 = i12 + 1;
                                if (wVar.f10477c - wVar.f10476b < i14 * 4) {
                                    while (i15 < i14) {
                                        this.f17845g = wVar.y();
                                        this.f17846h = wVar.y();
                                    }
                                    if ((iT & 8) != 0) {
                                        iT2 = wVar.t();
                                        if (wVar.f10477c - wVar.f10476b >= iT2) {
                                            i13 = 0;
                                            while (true) {
                                                if (i13 >= iT2) {
                                                    iY = (wVar.y() & 12) >> 2;
                                                    if (wVar.f10477c - wVar.f10476b < iY) {
                                                        wVar.E(iY);
                                                        i13++;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if ((iT & 8) != 0) {
                                iT2 = wVar.t();
                                if (wVar.f10477c - wVar.f10476b >= iT2) {
                                    i13 = 0;
                                    while (true) {
                                        if (i13 >= iT2) {
                                            iY = (wVar.y() & 12) >> 2;
                                            if (wVar.f10477c - wVar.f10476b < iY) {
                                                wVar.E(iY);
                                                i13++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        z12 = true;
                    }
                } else {
                    i11 = iT3 & 16;
                    if (i11 == 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    m5.a.b(z11, "VP9 flexible mode is not supported.");
                    if ((iT3 & 32) != 0) {
                        wVar.E(1);
                        if (wVar.f10477c - wVar.f10476b >= 1) {
                            if (i11 == 0) {
                                wVar.E(1);
                            }
                            if ((iT3 & 2) != 0) {
                                iT = wVar.t();
                                i12 = (iT >> 5) & 7;
                                if ((iT & 16) != 0) {
                                    i14 = i12 + 1;
                                    if (wVar.f10477c - wVar.f10476b < i14 * 4) {
                                        while (i15 < i14) {
                                            this.f17845g = wVar.y();
                                            this.f17846h = wVar.y();
                                        }
                                        if ((iT & 8) != 0) {
                                            iT2 = wVar.t();
                                            if (wVar.f10477c - wVar.f10476b >= iT2) {
                                                i13 = 0;
                                                while (true) {
                                                    if (i13 >= iT2) {
                                                        iY = (wVar.y() & 12) >> 2;
                                                        if (wVar.f10477c - wVar.f10476b < iY) {
                                                            wVar.E(iY);
                                                            i13++;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else if ((iT & 8) != 0) {
                                    iT2 = wVar.t();
                                    if (wVar.f10477c - wVar.f10476b >= iT2) {
                                        i13 = 0;
                                        while (true) {
                                            if (i13 >= iT2) {
                                                iY = (wVar.y() & 12) >> 2;
                                                if (wVar.f10477c - wVar.f10476b < iY) {
                                                    wVar.E(iY);
                                                    i13++;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            z12 = true;
                        }
                    } else {
                        if ((iT3 & 2) != 0) {
                            iT = wVar.t();
                            i12 = (iT >> 5) & 7;
                            if ((iT & 16) != 0) {
                                i14 = i12 + 1;
                                if (wVar.f10477c - wVar.f10476b < i14 * 4) {
                                    while (i15 < i14) {
                                        this.f17845g = wVar.y();
                                        this.f17846h = wVar.y();
                                    }
                                    if ((iT & 8) != 0) {
                                        iT2 = wVar.t();
                                        if (wVar.f10477c - wVar.f10476b >= iT2) {
                                            i13 = 0;
                                            while (true) {
                                                if (i13 >= iT2) {
                                                    iY = (wVar.y() & 12) >> 2;
                                                    if (wVar.f10477c - wVar.f10476b < iY) {
                                                        wVar.E(iY);
                                                        i13++;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if ((iT & 8) != 0) {
                                iT2 = wVar.t();
                                if (wVar.f10477c - wVar.f10476b >= iT2) {
                                    i13 = 0;
                                    while (true) {
                                        if (i13 >= iT2) {
                                            iY = (wVar.y() & 12) >> 2;
                                            if (wVar.f10477c - wVar.f10476b < iY) {
                                                wVar.E(iY);
                                                i13++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        z12 = true;
                    }
                }
                if (z12) {
                    if (this.f17844f != 0) {
                        i16 = 0;
                    } else {
                        i16 = 0;
                    }
                    if (!this.f17848j) {
                        s0Var = this.f17839a.f17176c;
                        if (i17 == s0Var.f11692x) {
                            w wVar2 = this.f17840b;
                            s0.a aVar = new s0.a(s0Var);
                            aVar.f11710p = this.f17845g;
                            aVar.f11711q = this.f17846h;
                            wVar2.b(new s0(aVar));
                        } else {
                            w wVar3 = this.f17840b;
                            s0.a aVar2 = new s0.a(s0Var);
                            aVar2.f11710p = this.f17845g;
                            aVar2.f11711q = this.f17846h;
                            wVar3.b(new s0(aVar2));
                        }
                        this.f17848j = true;
                    }
                    int i19 = wVar.f10477c - wVar.f10476b;
                    this.f17840b.f(wVar, i19);
                    this.f17844f += i19;
                    if (z10) {
                        if (this.f17841c == -9223372036854775807L) {
                            this.f17841c = j10;
                        }
                        this.f17840b.c(g0.R(j10 - this.f17841c, 1000000L, 90000L) + this.f17842d, i16, this.f17844f, 0, null);
                        this.f17844f = 0;
                        this.f17847i = false;
                    }
                    this.f17843e = i10;
                }
            }
            p.g("RtpVp9Reader", g0.m("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(iA), Integer.valueOf(i10)));
        } else {
            if ((iT3 & 8) != 0) {
                this.f17847i = true;
                if ((iT3 & 128) != 0 || (wVar.t() & 128) == 0 || wVar.f10477c - wVar.f10476b >= 1) {
                    i11 = iT3 & 16;
                    if (i11 == 0) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    m5.a.b(z11, "VP9 flexible mode is not supported.");
                    if ((iT3 & 32) != 0) {
                        wVar.E(1);
                        if (wVar.f10477c - wVar.f10476b >= 1) {
                            if (i11 == 0) {
                                wVar.E(1);
                            }
                            if ((iT3 & 2) != 0) {
                                iT = wVar.t();
                                i12 = (iT >> 5) & 7;
                                if ((iT & 16) != 0) {
                                    i14 = i12 + 1;
                                    if (wVar.f10477c - wVar.f10476b < i14 * 4) {
                                        while (i15 < i14) {
                                            this.f17845g = wVar.y();
                                            this.f17846h = wVar.y();
                                        }
                                        if ((iT & 8) != 0) {
                                            iT2 = wVar.t();
                                            if (wVar.f10477c - wVar.f10476b >= iT2) {
                                                i13 = 0;
                                                while (true) {
                                                    if (i13 >= iT2) {
                                                        iY = (wVar.y() & 12) >> 2;
                                                        if (wVar.f10477c - wVar.f10476b < iY) {
                                                            wVar.E(iY);
                                                            i13++;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else if ((iT & 8) != 0) {
                                    iT2 = wVar.t();
                                    if (wVar.f10477c - wVar.f10476b >= iT2) {
                                        i13 = 0;
                                        while (true) {
                                            if (i13 >= iT2) {
                                                iY = (wVar.y() & 12) >> 2;
                                                if (wVar.f10477c - wVar.f10476b < iY) {
                                                    wVar.E(iY);
                                                    i13++;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            z12 = true;
                        }
                    } else {
                        if ((iT3 & 2) != 0) {
                            iT = wVar.t();
                            i12 = (iT >> 5) & 7;
                            if ((iT & 16) != 0) {
                                i14 = i12 + 1;
                                if (wVar.f10477c - wVar.f10476b < i14 * 4) {
                                    while (i15 < i14) {
                                        this.f17845g = wVar.y();
                                        this.f17846h = wVar.y();
                                    }
                                    if ((iT & 8) != 0) {
                                        iT2 = wVar.t();
                                        if (wVar.f10477c - wVar.f10476b >= iT2) {
                                            i13 = 0;
                                            while (true) {
                                                if (i13 >= iT2) {
                                                    iY = (wVar.y() & 12) >> 2;
                                                    if (wVar.f10477c - wVar.f10476b < iY) {
                                                        wVar.E(iY);
                                                        i13++;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            } else if ((iT & 8) != 0) {
                                iT2 = wVar.t();
                                if (wVar.f10477c - wVar.f10476b >= iT2) {
                                    i13 = 0;
                                    while (true) {
                                        if (i13 >= iT2) {
                                            iY = (wVar.y() & 12) >> 2;
                                            if (wVar.f10477c - wVar.f10476b < iY) {
                                                wVar.E(iY);
                                                i13++;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        z12 = true;
                    }
                }
                if (z12) {
                    if (this.f17844f != 0 && this.f17847i && (wVar.b() & 4) == 0) {
                        i16 = 1;
                    } else {
                        i16 = 0;
                    }
                    if (!this.f17848j && (i17 = this.f17845g) != -1 && (i18 = this.f17846h) != -1) {
                        s0Var = this.f17839a.f17176c;
                        if (i17 == s0Var.f11692x || i18 != s0Var.f11693y) {
                            w wVar4 = this.f17840b;
                            s0.a aVar3 = new s0.a(s0Var);
                            aVar3.f11710p = this.f17845g;
                            aVar3.f11711q = this.f17846h;
                            wVar4.b(new s0(aVar3));
                        }
                        this.f17848j = true;
                    }
                    int i110 = wVar.f10477c - wVar.f10476b;
                    this.f17840b.f(wVar, i110);
                    this.f17844f += i110;
                    if (z10) {
                        if (this.f17841c == -9223372036854775807L) {
                            this.f17841c = j10;
                        }
                        this.f17840b.c(g0.R(j10 - this.f17841c, 1000000L, 90000L) + this.f17842d, i16, this.f17844f, 0, null);
                        this.f17844f = 0;
                        this.f17847i = false;
                    }
                    this.f17843e = i10;
                }
            }
            p.g("RtpVp9Reader", "First payload octet of the RTP packet is not the beginning of a new VP9 partition, Dropping current packet.");
        }
        z12 = false;
        if (z12) {
            if (this.f17844f != 0) {
                i16 = 0;
            } else {
                i16 = 0;
            }
            if (!this.f17848j) {
                s0Var = this.f17839a.f17176c;
                if (i17 == s0Var.f11692x) {
                    w wVar5 = this.f17840b;
                    s0.a aVar4 = new s0.a(s0Var);
                    aVar4.f11710p = this.f17845g;
                    aVar4.f11711q = this.f17846h;
                    wVar5.b(new s0(aVar4));
                } else {
                    w wVar6 = this.f17840b;
                    s0.a aVar5 = new s0.a(s0Var);
                    aVar5.f11710p = this.f17845g;
                    aVar5.f11711q = this.f17846h;
                    wVar6.b(new s0(aVar5));
                }
                this.f17848j = true;
            }
            int i111 = wVar.f10477c - wVar.f10476b;
            this.f17840b.f(wVar, i111);
            this.f17844f += i111;
            if (z10) {
                if (this.f17841c == -9223372036854775807L) {
                    this.f17841c = j10;
                }
                this.f17840b.c(g0.R(j10 - this.f17841c, 1000000L, 90000L) + this.f17842d, i16, this.f17844f, 0, null);
                this.f17844f = 0;
                this.f17847i = false;
            }
            this.f17843e = i10;
        }
    }

    @Override // x4.i
    public final void b(long j10, long j11) {
        this.f17841c = j10;
        this.f17844f = 0;
        this.f17842d = j11;
    }

    @Override // x4.i
    public final void c(long j10) {
    }

    @Override // x4.i
    public final void d(s3.j jVar, int i10) {
        w wVarP = jVar.p(i10, 2);
        this.f17840b = wVarP;
        wVarP.b(this.f17839a.f17176c);
    }
}
