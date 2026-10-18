package u3;

import java.util.Arrays;
import m5.g0;
import m5.p;
import m5.w;
import n3.s0;
import u6.t;
import u6.v;

/* JADX INFO: compiled from: ListChunk.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v<a> f15726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15727b;

    public f(int i10, v<a> vVar) {
        this.f15727b = i10;
        this.f15726a = vVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static f b(int i10, w wVar) {
        a gVar;
        String str;
        String str2;
        int i11;
        int i12 = 4;
        u6.h.b(4, "initialCapacity");
        Object[] objArrCopyOf = new Object[4];
        int i13 = wVar.f10477c;
        int i14 = 0;
        int i15 = -2;
        int i16 = 0;
        while (wVar.f10477c - wVar.f10476b > 8) {
            int iG = wVar.g();
            int iG2 = wVar.f10476b + wVar.g();
            wVar.C(iG2);
            if (iG != 1414744396) {
                switch (iG) {
                    case 1718776947:
                        if (i15 != 2) {
                            if (i15 == 1) {
                                int iL = wVar.l();
                                if (iL == 1) {
                                    str = "audio/raw";
                                } else if (iL == 85) {
                                    str = "audio/mpeg";
                                } else if (iL == 255) {
                                    str = "audio/mp4a-latm";
                                } else if (iL != 8192) {
                                    str = iL != 8193 ? null : "audio/vnd.dts";
                                } else {
                                    str = "audio/ac3";
                                }
                                if (str != null) {
                                    int iL2 = wVar.l();
                                    int iG3 = wVar.g();
                                    wVar.E(6);
                                    int iY = g0.y(wVar.y());
                                    int iL3 = wVar.l();
                                    byte[] bArr = new byte[iL3];
                                    wVar.d(bArr, i16, iL3);
                                    s0.a aVar = new s0.a();
                                    aVar.f11705k = str;
                                    aVar.f11718x = iL2;
                                    aVar.f11719y = iG3;
                                    if ("audio/raw".equals(str) && iY != 0) {
                                        aVar.f11720z = iY;
                                    }
                                    if ("audio/mp4a-latm".equals(str) && iL3 > 0) {
                                        aVar.f11707m = v.v(bArr);
                                    }
                                    gVar = new g(new s0(aVar));
                                } else {
                                    da.c.b("Ignoring track with unsupported format tag ", iL, "StreamFormatChunk");
                                }
                            } else {
                                StringBuilder sbC = a0.b.c("Ignoring strf box for unsupported track type: ");
                                sbC.append(g0.E(i15));
                                p.g("StreamFormatChunk", sbC.toString());
                            }
                            gVar = null;
                            break;
                        } else {
                            wVar.E(i12);
                            int iG4 = wVar.g();
                            int iG5 = wVar.g();
                            wVar.E(i12);
                            int iG6 = wVar.g();
                            switch (iG6) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str2 = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str2 = "video/avc";
                                    break;
                                case 842289229:
                                    str2 = "video/mp42";
                                    break;
                                case 859066445:
                                    str2 = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str2 = "video/mjpeg";
                                    break;
                                default:
                                    str2 = null;
                                    break;
                            }
                            if (str2 != null) {
                                s0.a aVar2 = new s0.a();
                                aVar2.f11710p = iG4;
                                aVar2.f11711q = iG5;
                                aVar2.f11705k = str2;
                                gVar = new g(new s0(aVar2));
                            } else {
                                da.c.b("Ignoring track with unsupported compression ", iG6, "StreamFormatChunk");
                                gVar = null;
                            }
                        }
                        break;
                    case 1751742049:
                        int iG7 = wVar.g();
                        wVar.E(8);
                        int iG8 = wVar.g();
                        int iG9 = wVar.g();
                        wVar.E(i12);
                        wVar.g();
                        wVar.E(12);
                        gVar = new c(iG7, iG8, iG9);
                        break;
                    case 1752331379:
                        int iG10 = wVar.g();
                        wVar.E(12);
                        wVar.g();
                        int iG11 = wVar.g();
                        int iG12 = wVar.g();
                        wVar.E(i12);
                        int iG13 = wVar.g();
                        int iG14 = wVar.g();
                        wVar.E(8);
                        gVar = new d(iG10, iG11, iG12, iG13, iG14);
                        break;
                    case 1852994675:
                        gVar = new h(wVar.q(wVar.f10477c - wVar.f10476b));
                        break;
                    default:
                        gVar = null;
                        break;
                }
            } else {
                gVar = b(wVar.g(), wVar);
            }
            if (gVar != null) {
                if (gVar.getType() == 1752331379) {
                    d dVar = (d) gVar;
                    int i17 = dVar.f15709a;
                    if (i17 == 1935960438) {
                        i15 = 2;
                    } else if (i17 != 1935963489) {
                        if (i17 != 1937012852) {
                            StringBuilder sbC2 = a0.b.c("Found unsupported streamType fourCC: ");
                            sbC2.append(Integer.toHexString(dVar.f15709a));
                            p.g("AviStreamHeaderChunk", sbC2.toString());
                            i11 = -1;
                        } else {
                            i11 = 3;
                        }
                        i15 = i11;
                    } else {
                        i15 = 1;
                    }
                }
                int i18 = i14 + 1;
                if (objArrCopyOf.length < i18) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i18));
                }
                objArrCopyOf[i14] = gVar;
                i14 = i18;
            }
            wVar.D(iG2);
            wVar.C(i13);
            i12 = 4;
            i16 = 0;
        }
        return new f(i10, v.q(objArrCopyOf, i14));
    }

    public final <T extends a> T a(Class<T> cls) {
        u6.a aVarListIterator = this.f15726a.listIterator(0);
        while (aVarListIterator.hasNext()) {
            T t10 = (T) aVarListIterator.next();
            if (t10.getClass() == cls) {
                return t10;
            }
        }
        return null;
    }

    @Override // u3.a
    public final int getType() {
        return this.f15727b;
    }
}
