package w4;

import android.net.Uri;
import android.util.Base64;
import android.util.Pair;
import de.n0;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import m5.g0;
import n3.s0;
import u6.p0;
import u6.q0;
import u6.t;
import u6.v;

/* JADX INFO: compiled from: RtspMediaTrack.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f17178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Uri f17179b;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:161:0x0292  */
    /* JADX WARN: Code duplicated, block: B:72:0x00fb  */
    public g(a aVar, Uri uri) {
        byte b10;
        String str;
        int i10;
        String str2;
        String str3;
        Map mapJ;
        byte b11;
        s0.a aVar2;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int i11;
        m5.a.a(aVar.f17124i.containsKey("control"));
        s0.a aVar3 = new s0.a();
        int i12 = aVar.f17120e;
        if (i12 > 0) {
            aVar3.f11700f = i12;
        }
        a.c cVar = aVar.f17125j;
        int i13 = cVar.f17135a;
        String str4 = cVar.f17136b;
        String strU = androidx.activity.k.u(str4);
        Objects.requireNonNull(strU);
        switch (strU) {
            case "MPEG4-GENERIC":
                b10 = 0;
                break;
            case "L8":
                b10 = 1;
                break;
            case "AC3":
                b10 = 2;
                break;
            case "AMR":
                b10 = 3;
                break;
            case "L16":
                b10 = 4;
                break;
            case "VP8":
                b10 = 5;
                break;
            case "VP9":
                b10 = 6;
                break;
            case "H264":
                b10 = 7;
                break;
            case "H265":
                b10 = 8;
                break;
            case "OPUS":
                b10 = 9;
                break;
            case "PCMA":
                b10 = 10;
                break;
            case "PCMU":
                b10 = 11;
                break;
            case "AMR-WB":
                b10 = 12;
                break;
            case "MP4V-ES":
                b10 = 13;
                break;
            case "H263-1998":
                b10 = 14;
                break;
            case "H263-2000":
                b10 = 15;
                break;
            default:
                b10 = -1;
                break;
        }
        String str5 = "audio/ac3";
        String str6 = "audio/raw";
        switch (b10) {
            case 0:
                str = "audio/mp4a-latm";
                break;
            case 1:
            case 4:
                str = "audio/raw";
                break;
            case 2:
                str = "audio/ac3";
                break;
            case 3:
                str = "audio/3gpp";
                break;
            case 5:
                str = "video/x-vnd.on2.vp8";
                break;
            case 6:
                str = "video/x-vnd.on2.vp9";
                break;
            case 7:
                str = "video/avc";
                break;
            case 8:
                str = "video/hevc";
                break;
            case 9:
                str = "audio/opus";
                break;
            case 10:
                str = "audio/g711-alaw";
                break;
            case 11:
                str = "audio/g711-mlaw";
                break;
            case 12:
                str = "audio/amr-wb";
                break;
            case 13:
                str = "video/mp4v-es";
                break;
            case 14:
            case 15:
                str = "video/3gpp";
                break;
            default:
                throw new IllegalArgumentException(str4);
        }
        aVar3.f11705k = str;
        int i14 = aVar.f17125j.f17137c;
        if ("audio".equals(aVar.f17116a)) {
            i10 = aVar.f17125j.f17138d;
            i10 = i10 == -1 ? str.equals("audio/ac3") ? 6 : 1 : i10;
            aVar3.f11719y = i14;
            aVar3.f11718x = i10;
        } else {
            i10 = -1;
        }
        String str7 = aVar.f17124i.get("fmtp");
        if (str7 == null) {
            mapJ = q0.f15971n;
            str2 = "audio/ac3";
            str3 = "audio/raw";
        } else {
            int i15 = g0.f10384a;
            String[] strArrSplit = str7.split(" ", 2);
            m5.a.b(strArrSplit.length == 2, str7);
            int i16 = 0;
            String[] strArrSplit2 = strArrSplit[1].split(";\\s?", 0);
            Object[] objArrCopyOf = new Object[8];
            int length = strArrSplit2.length;
            int i17 = 0;
            while (i16 < length) {
                int i18 = length;
                String[] strArr = strArrSplit2;
                String str8 = str5;
                String[] strArrSplit3 = strArrSplit2[i16].split("=", 2);
                String str9 = strArrSplit3[0];
                String str10 = strArrSplit3[1];
                int i19 = i17 + 1;
                String str11 = str6;
                int i20 = i19 * 2;
                if (i20 > objArrCopyOf.length) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, t.b.a(objArrCopyOf.length, i20));
                }
                u6.h.a(str9, str10);
                int i21 = i17 * 2;
                objArrCopyOf[i21] = str9;
                objArrCopyOf[i21 + 1] = str10;
                i16++;
                length = i18;
                strArrSplit2 = strArr;
                str5 = str8;
                str6 = str11;
                i17 = i19;
            }
            str2 = str5;
            str3 = str6;
            mapJ = q0.j(i17, objArrCopyOf);
        }
        switch (str.hashCode()) {
            case -1664118616:
                if (str.equals("video/3gpp")) {
                    b11 = 5;
                } else {
                    b11 = -1;
                }
                break;
            case -1662541442:
                if (str.equals("video/hevc")) {
                    b11 = 7;
                } else {
                    b11 = -1;
                }
                break;
            case -1606874997:
                if (str.equals("audio/amr-wb")) {
                    b11 = 2;
                } else {
                    b11 = -1;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    b11 = 0;
                } else {
                    b11 = -1;
                }
                break;
            case 187078296:
                if (str.equals(str2)) {
                    b11 = 11;
                } else {
                    b11 = -1;
                }
                break;
            case 187094639:
                if (str.equals(str3)) {
                    b11 = 10;
                } else {
                    b11 = -1;
                }
                break;
            case 1187890754:
                if (str.equals("video/mp4v-es")) {
                    b11 = 4;
                } else {
                    b11 = -1;
                }
                break;
            case 1331836730:
                if (str.equals("video/avc")) {
                    b11 = 6;
                } else {
                    b11 = -1;
                }
                break;
            case 1503095341:
                if (str.equals("audio/3gpp")) {
                    b11 = 1;
                } else {
                    b11 = -1;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    b11 = 3;
                } else {
                    b11 = -1;
                }
                break;
            case 1599127256:
                if (str.equals("video/x-vnd.on2.vp8")) {
                    b11 = 8;
                } else {
                    b11 = -1;
                }
                break;
            case 1599127257:
                if (str.equals("video/x-vnd.on2.vp9")) {
                    b11 = 9;
                } else {
                    b11 = -1;
                }
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    b11 = 12;
                } else {
                    b11 = -1;
                }
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    b11 = 13;
                } else {
                    b11 = -1;
                }
                break;
            default:
                b11 = -1;
                break;
        }
        switch (b11) {
            case 0:
                i14 = i14;
                int i22 = i10;
                aVar2 = aVar3;
                m5.a.a(i22 != -1);
                m5.a.a(!mapJ.isEmpty());
                m5.a.a(mapJ.containsKey("profile-level-id"));
                String str12 = (String) mapJ.get("profile-level-id");
                Objects.requireNonNull(str12);
                aVar2.f11702h = "mp4a.40." + str12;
                aVar2.f11707m = v.v(p3.a.a(i14, i22));
                z10 = false;
                z11 = true;
                break;
            case 1:
            case 2:
                i14 = i14;
                int i23 = i10;
                aVar2 = aVar3;
                z10 = false;
                z11 = true;
                m5.a.b(i23 == 1, "Multi channel AMR is not currently supported.");
                m5.a.b(!mapJ.isEmpty(), "fmtp parameters must include octet-align.");
                m5.a.b(mapJ.containsKey("octet-align"), "Only octet aligned mode is currently supported.");
                m5.a.b(!mapJ.containsKey("interleaving"), "Interleaving mode is not currently supported.");
                break;
            case 3:
                aVar2 = aVar3;
                z12 = false;
                m5.a.a(i10 != -1);
                i14 = i14;
                m5.a.b(i14 == 48000, "Invalid OPUS clock rate.");
                boolean z14 = z12;
                z11 = true;
                z10 = z14;
                break;
            case 4:
                aVar2 = aVar3;
                z12 = false;
                m5.a.a(!mapJ.isEmpty());
                String str13 = (String) mapJ.get("config");
                if (str13 != null) {
                    byte[] bArrQ = g0.q(str13);
                    aVar2.f11707m = v.v(bArrQ);
                    int length2 = bArrQ.length;
                    int i24 = 0;
                    int i25 = 0;
                    while (true) {
                        int i26 = i24 + 3;
                        if (i26 < bArrQ.length) {
                            int i27 = i25 + 1;
                            int i28 = i27 + 1;
                            int i29 = ((bArrQ[i25] & 255) << 16) | ((bArrQ[i27] & 255) << 8);
                            int i30 = i28 + 1;
                            if ((i29 | (bArrQ[i28] & 255)) == 1 && (bArrQ[i26] & 240) == 32) {
                                z13 = true;
                            } else {
                                i25 = i30 - 2;
                                m5.a.a(i25 >= 0 && i25 <= length2);
                                i24++;
                            }
                        } else {
                            z13 = false;
                        }
                    }
                    m5.a.b(z13, "Invalid input: VOL not found.");
                    m5.v vVar = new m5.v(bArrQ, bArrQ.length);
                    vVar.m((i24 + 4) * 8);
                    vVar.m(1);
                    vVar.m(8);
                    if (vVar.f()) {
                        vVar.m(4);
                        vVar.m(3);
                    }
                    if (vVar.g(4) == 15) {
                        vVar.m(8);
                        vVar.m(8);
                    }
                    if (vVar.f()) {
                        i11 = 2;
                        vVar.m(2);
                        vVar.m(1);
                        if (vVar.f()) {
                            vVar.m(79);
                        }
                    } else {
                        i11 = 2;
                    }
                    m5.a.b(vVar.g(i11) == 0, "Only supports rectangular video object layer shape.");
                    m5.a.a(vVar.f());
                    int iG = vVar.g(16);
                    m5.a.a(vVar.f());
                    if (vVar.f()) {
                        m5.a.a(iG > 0);
                        int i31 = 0;
                        for (int i32 = iG - 1; i32 > 0; i32 >>= 1) {
                            i31++;
                        }
                        vVar.m(i31);
                    }
                    m5.a.a(vVar.f());
                    int iG2 = vVar.g(13);
                    m5.a.a(vVar.f());
                    int iG3 = vVar.g(13);
                    m5.a.a(vVar.f());
                    vVar.m(1);
                    Pair pairCreate = Pair.create(Integer.valueOf(iG2), Integer.valueOf(iG3));
                    aVar2.f11710p = ((Integer) pairCreate.first).intValue();
                    aVar2.f11711q = ((Integer) pairCreate.second).intValue();
                } else {
                    aVar2.f11710p = 352;
                    aVar2.f11711q = 288;
                }
                String str14 = (String) mapJ.get("profile-level-id");
                StringBuilder sbC = a0.b.c("mp4v.");
                sbC.append(str14 == null ? "1" : str14);
                aVar2.f11702h = sbC.toString();
                i14 = i14;
                boolean z15 = z12;
                z11 = true;
                z10 = z15;
                break;
            case 5:
                aVar2 = aVar3;
                z12 = false;
                aVar2.f11710p = 352;
                aVar2.f11711q = 288;
                i14 = i14;
                boolean z16 = z12;
                z11 = true;
                z10 = z16;
                break;
            case 6:
                aVar2 = aVar3;
                m5.a.a(!mapJ.isEmpty());
                m5.a.a(mapJ.containsKey("sprop-parameter-sets"));
                String str15 = (String) mapJ.get("sprop-parameter-sets");
                Objects.requireNonNull(str15);
                int i33 = g0.f10384a;
                String[] strArrSplit4 = str15.split(",", -1);
                m5.a.a(strArrSplit4.length == 2);
                z12 = false;
                v vVarW = v.w(a(strArrSplit4[0]), a(strArrSplit4[1]));
                aVar2.f11707m = vVarW;
                byte[] bArr = (byte[]) ((p0) vVarW).get(0);
                byte[] bArr2 = m5.t.f10435a;
                m5.t.c cVarE = m5.t.e(bArr, 4, bArr.length);
                aVar2.f11714t = cVarE.f10457g;
                aVar2.f11711q = cVarE.f10456f;
                aVar2.f11710p = cVarE.f10455e;
                String str16 = (String) mapJ.get("profile-level-id");
                if (str16 != null) {
                    aVar2.f11702h = androidx.recyclerview.widget.d.c("avc1.", str16);
                } else {
                    aVar2.f11702h = n0.c(cVarE.f10451a, cVarE.f10452b, cVarE.f10453c);
                }
                i14 = i14;
                boolean z17 = z12;
                z11 = true;
                z10 = z17;
                break;
            case 7:
                aVar2 = aVar3;
                m5.a.a(!mapJ.isEmpty());
                if (mapJ.containsKey("sprop-max-don-diff")) {
                    String str17 = (String) mapJ.get("sprop-max-don-diff");
                    Objects.requireNonNull(str17);
                    int i34 = Integer.parseInt(str17);
                    m5.a.b(i34 == 0, "non-zero sprop-max-don-diff " + i34 + " is not supported");
                }
                m5.a.a(mapJ.containsKey("sprop-vps"));
                String str18 = (String) mapJ.get("sprop-vps");
                Objects.requireNonNull(str18);
                m5.a.a(mapJ.containsKey("sprop-sps"));
                String str19 = (String) mapJ.get("sprop-sps");
                Objects.requireNonNull(str19);
                m5.a.a(mapJ.containsKey("sprop-pps"));
                String str20 = (String) mapJ.get("sprop-pps");
                Objects.requireNonNull(str20);
                byte[] bArrA = a(str18);
                byte[] bArrA2 = a(str19);
                byte[] bArrA3 = a(str20);
                u6.a aVar4 = v.f16002i;
                v vVarR = v.r(bArrA, bArrA2, bArrA3);
                aVar2.f11707m = vVarR;
                byte[] bArr3 = (byte[]) ((p0) vVarR).get(1);
                byte[] bArr4 = m5.t.f10435a;
                m5.t.a aVarC = m5.t.c(bArr3, 4, bArr3.length);
                aVar2.f11714t = aVarC.f10447i;
                aVar2.f11711q = aVarC.f10446h;
                aVar2.f11710p = aVarC.f10445g;
                aVar2.f11702h = n0.d(aVarC.f10439a, aVarC.f10440b, aVarC.f10441c, aVarC.f10442d, aVarC.f10443e, aVarC.f10444f);
                z12 = false;
                boolean z18 = z12;
                z11 = true;
                z10 = z18;
                break;
            case 8:
                aVar2 = aVar3;
                aVar2.f11710p = 320;
                aVar2.f11711q = 240;
                z12 = false;
                boolean z19 = z12;
                z11 = true;
                z10 = z19;
                break;
            case 9:
                aVar2 = aVar3;
                aVar2.f11710p = 320;
                aVar2.f11711q = 240;
                z12 = false;
                boolean z110 = z12;
                z11 = true;
                z10 = z110;
                break;
            case 10:
                m5.a.a(str4.equals("L8") || str4.equals("L16"));
                aVar2 = aVar3;
                aVar2.f11720z = str4.equals("L8") ? 3 : 268435456;
                z12 = false;
                boolean z111 = z12;
                z11 = true;
                z10 = z111;
                break;
            default:
                aVar2 = aVar3;
                z12 = false;
                boolean z112 = z12;
                z11 = true;
                z10 = z112;
                break;
        }
        m5.a.a(i14 > 0 ? z11 : z10);
        this.f17178a = new f(new s0(aVar2), i13, i14, mapJ);
        String str21 = aVar.f17124i.get("control");
        Uri uri2 = Uri.parse(str21);
        this.f17179b = uri2.isAbsolute() ? uri2 : str21.equals("*") ? uri : uri.buildUpon().appendEncodedPath(str21).build();
    }

    public static byte[] a(String str) {
        byte[] bArrDecode = Base64.decode(str, 0);
        byte[] bArr = new byte[bArrDecode.length + 4];
        System.arraycopy(m5.t.f10435a, 0, bArr, 0, 4);
        System.arraycopy(bArrDecode, 0, bArr, 4, bArrDecode.length);
        return bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f17178a.equals(gVar.f17178a) && this.f17179b.equals(gVar.f17179b);
    }

    public final int hashCode() {
        return this.f17179b.hashCode() + ((this.f17178a.hashCode() + 217) * 31);
    }
}
