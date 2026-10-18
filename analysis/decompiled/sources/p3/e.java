package p3;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.util.Pair;
import java.util.Arrays;
import java.util.Objects;
import n3.s0;
import u6.q0;
import u6.y0;

/* JADX INFO: compiled from: AudioCapabilities.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final e f12706c = new e(new int[]{2}, 8);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final e f12707d = new e(new int[]{2, 5, 6}, 8);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final u6.x<Integer, Integer> f12708e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f12709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f12710b;

    /* JADX INFO: compiled from: AudioCapabilities.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AudioAttributes f12711a = new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(0).build();

        public static int[] a() {
            u6.a aVar = u6.v.f16002i;
            u6.v.a aVar2 = new u6.v.a();
            y0<Integer> it = e.f12708e.keySet().iterator();
            while (it.hasNext()) {
                int iIntValue = it.next().intValue();
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), f12711a)) {
                    aVar2.c(Integer.valueOf(iIntValue));
                }
            }
            aVar2.c(2);
            return w6.a.d(aVar2.e());
        }

        public static int b(int i10, int i11) {
            for (int i12 = 8; i12 > 0; i12--) {
                if (AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i10).setSampleRate(i11).setChannelMask(m5.g0.p(i12)).build(), f12711a)) {
                    return i12;
                }
            }
            return 0;
        }
    }

    static {
        u6.x.a aVar = new u6.x.a(4);
        aVar.c(5, 6);
        aVar.c(17, 6);
        aVar.c(7, 6);
        aVar.c(18, 6);
        aVar.c(6, 8);
        aVar.c(8, 8);
        aVar.c(14, 8);
        f12708e = (q0) aVar.a();
    }

    public e(int[] iArr, int i10) {
        if (iArr != null) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, iArr.length);
            this.f12709a = iArrCopyOf;
            Arrays.sort(iArrCopyOf);
        } else {
            this.f12709a = new int[0];
        }
        this.f12710b = i10;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x0084  */
    public final Pair<Integer, Integer> a(s0 s0Var) {
        int iIntValue;
        String str = s0Var.f11687s;
        Objects.requireNonNull(str);
        int iD = m5.s.d(str, s0Var.f11684p);
        u6.x<Integer, Integer> xVar = f12708e;
        if (!xVar.containsKey(Integer.valueOf(iD))) {
            return null;
        }
        int i10 = 6;
        if (iD == 18 && !b(18)) {
            iD = 6;
        } else if (iD == 8 && !b(8)) {
            iD = 7;
        }
        if (!b(iD)) {
            return null;
        }
        int i11 = s0Var.F;
        if (i11 == -1 || iD == 18) {
            int i12 = s0Var.G;
            if (i12 == -1) {
                i12 = 48000;
            }
            if (m5.g0.f10384a >= 29) {
                iIntValue = a.b(iD, i12);
            } else {
                Integer orDefault = xVar.getOrDefault(Integer.valueOf(iD), 0);
                Objects.requireNonNull(orDefault);
                iIntValue = orDefault.intValue();
            }
            i11 = iIntValue;
        } else if (i11 > this.f12710b) {
            return null;
        }
        int i13 = m5.g0.f10384a;
        if (i13 > 28) {
            i10 = i11;
        } else if (i11 == 7) {
            i10 = 8;
        } else if (i11 != 3 && i11 != 4 && i11 != 5) {
            i10 = i11;
        }
        if (i13 <= 26 && "fugu".equals(m5.g0.f10385b) && i10 == 1) {
            i10 = 2;
        }
        int iP = m5.g0.p(i10);
        if (iP == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iD), Integer.valueOf(iP));
    }

    public final boolean b(int i10) {
        return Arrays.binarySearch(this.f12709a, i10) >= 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return Arrays.equals(this.f12709a, eVar.f12709a) && this.f12710b == eVar.f12710b;
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.f12709a) * 31) + this.f12710b;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("AudioCapabilities[maxChannelCount=");
        sbC.append(this.f12710b);
        sbC.append(", supportedEncodings=");
        sbC.append(Arrays.toString(this.f12709a));
        sbC.append("]");
        return sbC.toString();
    }
}
