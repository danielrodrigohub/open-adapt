package de;

import androidx.cardview.widget.CardView;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.DeviceControllerResult;

/* JADX INFO: compiled from: -Util.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c.a f6257a = new c.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final byte[] f6258b = {0, 0, 0, 1};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String[] f6259c = {"", "A", "B", "C"};

    public static final boolean a(byte[] bArr, int i10, byte[] bArr2, int i11, int i12) {
        p4.h.j(bArr, "a");
        p4.h.j(bArr2, "b");
        for (int i13 = 0; i13 < i12; i13++) {
            if (bArr[i13 + i10] != bArr2[i13 + i11]) {
                return false;
            }
        }
        return true;
    }

    public static final void b(i8.b bVar) {
        p4.h.j(bVar, "result");
        try {
            if (bVar instanceof DeviceControllerResult) {
                DeviceControllerResult deviceControllerResult = (DeviceControllerResult) bVar;
                o7.x.f12420a.a(deviceControllerResult.getClass().getSimpleName() + "  " + deviceControllerResult);
            } else if (bVar instanceof AdaptConnectionStatusResult) {
                o7.x.f12420a.a(((AdaptConnectionStatusResult) bVar).getClass().getSimpleName() + " ");
            } else if (bVar instanceof j8.f) {
                j8.f fVar = (j8.f) bVar;
                o7.x.f12420a.a(fVar.getClass().getSimpleName() + " " + fVar);
            } else if (bVar instanceof k8.g) {
                o7.x.f12420a.a(k8.g.class.getSimpleName() + "  " + ((k8.g) bVar));
            }
        } catch (Throwable unused) {
        }
    }

    public static String c(int i10, int i11, int i12) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12));
    }

    public static String d(int i10, boolean z10, int i11, int i12, int[] iArr, int i13) {
        Object[] objArr = new Object[5];
        objArr[0] = f6259c[i10];
        objArr[1] = Integer.valueOf(i11);
        objArr[2] = Integer.valueOf(i12);
        objArr[3] = Character.valueOf(z10 ? 'H' : 'L');
        objArr[4] = Integer.valueOf(i13);
        StringBuilder sb2 = new StringBuilder(m5.g0.m("hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i14 = 0; i14 < length; i14++) {
            sb2.append(String.format(".%02X", Integer.valueOf(iArr[i14])));
        }
        return sb2.toString();
    }

    public static final void e(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException("size=" + j10 + " offset=" + j11 + " byteCount=" + j12);
        }
    }

    public static boolean i(byte[] bArr, int i10) {
        if (bArr.length - i10 <= 4) {
            return false;
        }
        int i11 = 0;
        while (true) {
            byte[] bArr2 = f6258b;
            if (i11 >= 4) {
                return true;
            }
            if (bArr[i10 + i11] != bArr2[i11]) {
                return false;
            }
            i11++;
        }
    }

    public static final ba.e j(mc.c cVar) {
        ba.e.b bVar;
        p4.h.j(cVar, "<this>");
        int i10 = cVar.f10977h;
        int iA = q.g.a(cVar.f10978i);
        if (iA == 0) {
            bVar = ba.e.b.ON_CHARGER;
        } else if (iA == 1) {
            bVar = ba.e.b.OFF_CHARGER;
        } else if (iA == 2) {
            bVar = ba.e.b.ON_CHARGING;
        } else if (iA == 3) {
            bVar = ba.e.b.CHARGING_ERROR;
        } else {
            if (iA != 4) {
                throw new j2.a();
            }
            bVar = ba.e.b.ERROR;
        }
        return new ba.e(i10, bVar);
    }

    public static final int k(g gVar, int i10) {
        p4.h.j(gVar, "<this>");
        return i10 == -1234567890 ? gVar.j() : i10;
    }

    public static final int l(int i10) {
        return ((i10 & 255) << 24) | (((-16777216) & i10) >>> 24) | ((16711680 & i10) >>> 8) | ((65280 & i10) << 8);
    }

    public static final String n(byte b10) {
        char[] cArr = androidx.emoji2.text.b.f1801h;
        return new String(new char[]{cArr[(b10 >> 4) & 15], cArr[b10 & 15]});
    }

    public o.b f(o.a aVar) {
        return (o.b) ((CardView.a) aVar).f1508a;
    }

    public float g(o.a aVar) {
        return f(aVar).f12042e;
    }

    public float h(o.a aVar) {
        return f(aVar).f12038a;
    }

    public void m(o.a aVar, float f10) {
        o.b bVarF = f(aVar);
        CardView.a aVar2 = (CardView.a) aVar;
        boolean useCompatPadding = CardView.this.getUseCompatPadding();
        boolean zA = aVar2.a();
        if (f10 != bVarF.f12042e || bVarF.f12043f != useCompatPadding || bVarF.f12044g != zA) {
            bVarF.f12042e = f10;
            bVarF.f12043f = useCompatPadding;
            bVarF.f12044g = zA;
            bVarF.c(null);
            bVarF.invalidateSelf();
        }
        if (!CardView.this.getUseCompatPadding()) {
            aVar2.b(0, 0, 0, 0);
            return;
        }
        float fG = g(aVar);
        float fH = h(aVar);
        int iCeil = (int) Math.ceil(o.c.a(fG, fH, aVar2.a()));
        int iCeil2 = (int) Math.ceil(o.c.b(fG, fH, aVar2.a()));
        aVar2.b(iCeil, iCeil2, iCeil, iCeil2);
    }
}
