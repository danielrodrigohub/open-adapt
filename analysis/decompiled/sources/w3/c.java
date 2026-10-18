package w3;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import m5.w;
import s3.g;

/* JADX INFO: compiled from: ScriptTagPayloadReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f17106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long[] f17107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public long[] f17108d;

    public c() {
        super(new g());
        this.f17106b = -9223372036854775807L;
        this.f17107c = new long[0];
        this.f17108d = new long[0];
    }

    public static Object d(w wVar, int i10) {
        if (i10 == 0) {
            return Double.valueOf(Double.longBitsToDouble(wVar.m()));
        }
        if (i10 == 1) {
            return Boolean.valueOf(wVar.t() == 1);
        }
        if (i10 == 2) {
            return f(wVar);
        }
        if (i10 != 3) {
            if (i10 == 8) {
                return e(wVar);
            }
            if (i10 != 10) {
                if (i10 != 11) {
                    return null;
                }
                Date date = new Date((long) Double.valueOf(Double.longBitsToDouble(wVar.m())).doubleValue());
                wVar.E(2);
                return date;
            }
            int iW = wVar.w();
            ArrayList arrayList = new ArrayList(iW);
            for (int i11 = 0; i11 < iW; i11++) {
                Object objD = d(wVar, wVar.t());
                if (objD != null) {
                    arrayList.add(objD);
                }
            }
            return arrayList;
        }
        HashMap map = new HashMap();
        while (true) {
            String strF = f(wVar);
            int iT = wVar.t();
            if (iT == 9) {
                return map;
            }
            Object objD2 = d(wVar, iT);
            if (objD2 != null) {
                map.put(strF, objD2);
            }
        }
    }

    public static HashMap<String, Object> e(w wVar) {
        int iW = wVar.w();
        HashMap<String, Object> map = new HashMap<>(iW);
        for (int i10 = 0; i10 < iW; i10++) {
            String strF = f(wVar);
            Object objD = d(wVar, wVar.t());
            if (objD != null) {
                map.put(strF, objD);
            }
        }
        return map;
    }

    public static String f(w wVar) {
        int iY = wVar.y();
        int i10 = wVar.f10476b;
        wVar.E(iY);
        return new String(wVar.f10475a, i10, iY);
    }

    @Override // w3.d
    public final boolean b(w wVar) {
        return true;
    }

    @Override // w3.d
    public final boolean c(w wVar, long j10) {
        if (wVar.t() != 2 || !"onMetaData".equals(f(wVar)) || wVar.f10477c - wVar.f10476b == 0 || wVar.t() != 8) {
            return false;
        }
        HashMap<String, Object> mapE = e(wVar);
        Object obj = mapE.get("duration");
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (dDoubleValue > 0.0d) {
                this.f17106b = (long) (dDoubleValue * 1000000.0d);
            }
        }
        Object obj2 = mapE.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.f17107c = new long[size];
                this.f17108d = new long[size];
                for (int i10 = 0; i10 < size; i10++) {
                    Object obj5 = list.get(i10);
                    Object obj6 = list2.get(i10);
                    if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                        this.f17107c = new long[0];
                        this.f17108d = new long[0];
                        break;
                    }
                    this.f17107c[i10] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                    this.f17108d[i10] = ((Double) obj5).longValue();
                }
            }
        }
        return false;
    }
}
