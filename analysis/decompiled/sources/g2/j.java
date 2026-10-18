package g2;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Typeface;
import androidx.fragment.app.r0;
import androidx.lifecycle.k0;
import b2.o;
import b2.p;
import b2.r;
import f2.n;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import y1.e0;
import y1.i0;

/* JADX INFO: compiled from: TextLayer.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends g2.b {
    public final StringBuilder D;
    public final RectF E;
    public final Matrix F;
    public final a G;
    public final b H;
    public final Map<d2.d, List<a2.c>> I;
    public final p.d<String> J;
    public final p K;
    public final e0 L;
    public final y1.i M;
    public b2.a<Integer, Integer> N;
    public b2.a<Integer, Integer> O;
    public b2.a<Integer, Integer> P;
    public b2.a<Integer, Integer> Q;
    public b2.a<Float, Float> R;
    public b2.a<Float, Float> S;
    public b2.a<Float, Float> T;
    public b2.a<Float, Float> U;
    public b2.a<Float, Float> V;
    public b2.a<Typeface, Typeface> W;

    /* JADX INFO: compiled from: TextLayer.java */
    public class a extends Paint {
        public a() {
            super(1);
            setStyle(Paint.Style.FILL);
        }
    }

    /* JADX INFO: compiled from: TextLayer.java */
    public class b extends Paint {
        public b() {
            super(1);
            setStyle(Paint.Style.STROKE);
        }
    }

    public j(e0 e0Var, f fVar) {
        e2.b bVar;
        e2.b bVar2;
        e2.a aVar;
        e2.a aVar2;
        super(e0Var, fVar);
        this.D = new StringBuilder(2);
        this.E = new RectF();
        this.F = new Matrix();
        this.G = new a();
        this.H = new b();
        this.I = new HashMap();
        this.J = new p.d<>();
        this.L = e0Var;
        this.M = fVar.f7589b;
        p pVar = new p((List) fVar.f7604q.f6315b);
        this.K = pVar;
        pVar.a(this);
        f(pVar);
        q.c cVar = fVar.f7605r;
        if (cVar != null && (aVar2 = (e2.a) cVar.f13455a) != null) {
            b2.a<Integer, Integer> aVarA = aVar2.a();
            this.N = (b2.b) aVarA;
            aVarA.a(this);
            f(this.N);
        }
        if (cVar != null && (aVar = (e2.a) cVar.f13456b) != null) {
            b2.a<Integer, Integer> aVarA2 = aVar.a();
            this.P = (b2.b) aVarA2;
            aVarA2.a(this);
            f(this.P);
        }
        if (cVar != null && (bVar2 = (e2.b) cVar.f13457c) != null) {
            b2.a<Float, Float> aVarA3 = bVar2.a();
            this.R = (b2.d) aVarA3;
            aVarA3.a(this);
            f(this.R);
        }
        if (cVar == null || (bVar = (e2.b) cVar.f13458d) == null) {
            return;
        }
        b2.a<Float, Float> aVarA4 = bVar.a();
        this.T = (b2.d) aVarA4;
        aVarA4.a(this);
        f(this.T);
    }

    public final List<String> A(String str) {
        return Arrays.asList(str.replaceAll("\r\n", "\r").replaceAll("\n", "\r").split("\r"));
    }

    @Override // g2.b, a2.d
    public final void b(RectF rectF, Matrix matrix, boolean z10) {
        super.b(rectF, matrix, z10);
        rectF.set(0.0f, 0.0f, this.M.f18341j.width(), this.M.f18341j.height());
    }

    @Override // g2.b, d2.f
    public final <T> void g(T t10, l2.c<T> cVar) {
        super.g(t10, cVar);
        if (t10 == i0.f18347a) {
            b2.a<Integer, Integer> aVar = this.O;
            if (aVar != null) {
                s(aVar);
            }
            if (cVar == null) {
                this.O = null;
                return;
            }
            r rVar = new r(cVar, null);
            this.O = rVar;
            rVar.a(this);
            f(this.O);
            return;
        }
        if (t10 == i0.f18348b) {
            b2.a<Integer, Integer> aVar2 = this.Q;
            if (aVar2 != null) {
                s(aVar2);
            }
            if (cVar == null) {
                this.Q = null;
                return;
            }
            r rVar2 = new r(cVar, null);
            this.Q = rVar2;
            rVar2.a(this);
            f(this.Q);
            return;
        }
        if (t10 == i0.f18365s) {
            b2.a<Float, Float> aVar3 = this.S;
            if (aVar3 != null) {
                s(aVar3);
            }
            if (cVar == null) {
                this.S = null;
                return;
            }
            r rVar3 = new r(cVar, null);
            this.S = rVar3;
            rVar3.a(this);
            f(this.S);
            return;
        }
        if (t10 == i0.f18366t) {
            b2.a<Float, Float> aVar4 = this.U;
            if (aVar4 != null) {
                s(aVar4);
            }
            if (cVar == null) {
                this.U = null;
                return;
            }
            r rVar4 = new r(cVar, null);
            this.U = rVar4;
            rVar4.a(this);
            f(this.U);
            return;
        }
        if (t10 == i0.F) {
            b2.a<Float, Float> aVar5 = this.V;
            if (aVar5 != null) {
                s(aVar5);
            }
            if (cVar == null) {
                this.V = null;
                return;
            }
            r rVar5 = new r(cVar, null);
            this.V = rVar5;
            rVar5.a(this);
            f(this.V);
            return;
        }
        if (t10 != i0.M) {
            if (t10 == i0.O) {
                p pVar = this.K;
                Objects.requireNonNull(pVar);
                pVar.k(new o(new l2.b(), cVar, new d2.b()));
                return;
            }
            return;
        }
        b2.a<Typeface, Typeface> aVar6 = this.W;
        if (aVar6 != null) {
            s(aVar6);
        }
        if (cVar == null) {
            this.W = null;
            return;
        }
        r rVar6 = new r(cVar, null);
        this.W = rVar6;
        rVar6.a(this);
        f(this.W);
    }

    /* JADX WARN: Code duplicated, block: B:142:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:145:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:148:0x040d  */
    /* JADX WARN: Code duplicated, block: B:162:0x0443  */
    /* JADX WARN: Code duplicated, block: B:165:0x0447 A[LOOP:7: B:146:0x0407->B:165:0x0447, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:168:0x0457  */
    /* JADX WARN: Code duplicated, block: B:171:0x0464  */
    /* JADX WARN: Code duplicated, block: B:172:0x0466  */
    /* JADX WARN: Code duplicated, block: B:174:0x0469  */
    /* JADX WARN: Code duplicated, block: B:175:0x0473  */
    /* JADX WARN: Code duplicated, block: B:177:0x047c A[LOOP:8: B:176:0x047a->B:177:0x047c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:181:0x049f  */
    /* JADX WARN: Code duplicated, block: B:182:0x04aa  */
    /* JADX WARN: Code duplicated, block: B:202:0x0450 A[EDGE_INSN: B:202:0x0450->B:166:0x0450 BREAK  A[LOOP:7: B:146:0x0407->B:165:0x0447], SYNTHETIC] */
    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // g2.b
    public final void l(Canvas canvas, Matrix matrix, int i10) {
        c2.a aVar;
        Typeface typefaceF;
        int i11;
        float fFloatValue;
        float fC;
        List<String> listA;
        int size;
        int i12;
        String str;
        int length;
        int iCodePointAt;
        int iCharCount;
        p.d<String> dVar;
        long j10;
        boolean z10;
        int iCharCount2;
        String string;
        int iCodePointAt2;
        boolean z11;
        int i13;
        String str2;
        List<a2.c> list;
        float fFloatValue2;
        canvas.save();
        int i14 = 1;
        if (!(this.L.f18305h.f18338g.f12618j > 0)) {
            canvas.concat(matrix);
        }
        d2.b bVarF = this.K.f();
        d2.c cVar = this.M.f18336e.get(bVarF.f5965b);
        if (cVar == null) {
            canvas.restore();
            return;
        }
        b2.a<Integer, Integer> aVar2 = this.O;
        if (aVar2 != null) {
            this.G.setColor(aVar2.f().intValue());
        } else {
            b2.a<Integer, Integer> aVar3 = this.N;
            if (aVar3 != null) {
                this.G.setColor(aVar3.f().intValue());
            } else {
                this.G.setColor(bVarF.f5971h);
            }
        }
        b2.a<Integer, Integer> aVar4 = this.Q;
        if (aVar4 != null) {
            this.H.setColor(aVar4.f().intValue());
        } else {
            b2.a<Integer, Integer> aVar5 = this.P;
            if (aVar5 != null) {
                this.H.setColor(aVar5.f().intValue());
            } else {
                this.H.setColor(bVarF.f5972i);
            }
        }
        b2.a<Integer, Integer> aVar6 = this.f7585x.f3222j;
        int iIntValue = ((aVar6 == null ? 100 : aVar6.f().intValue()) * 255) / 100;
        this.G.setAlpha(iIntValue);
        this.H.setAlpha(iIntValue);
        b2.a<Float, Float> aVar7 = this.S;
        if (aVar7 != null) {
            this.H.setStrokeWidth(aVar7.f().floatValue());
        } else {
            b2.a<Float, Float> aVar8 = this.R;
            if (aVar8 != null) {
                this.H.setStrokeWidth(aVar8.f().floatValue());
            } else {
                this.H.setStrokeWidth(k2.g.c() * bVarF.f5973j * k2.g.d(matrix));
            }
        }
        if (this.L.f18305h.f18338g.f12618j > 0) {
            b2.a<Float, Float> aVar9 = this.V;
            float fFloatValue3 = (aVar9 != null ? aVar9.f().floatValue() : bVarF.f5966c) / 100.0f;
            float fD = k2.g.d(matrix);
            String str3 = bVarF.f5964a;
            float fC2 = k2.g.c() * bVarF.f5969f;
            List<String> listA2 = A(str3);
            int size2 = listA2.size();
            int i15 = 0;
            while (i15 < size2) {
                String str4 = listA2.get(i15);
                float fC3 = 0.0f;
                int i16 = 0;
                while (i16 < str4.length()) {
                    d2.d dVarC = this.M.f18338g.c(d2.d.a(str4.charAt(i16), cVar.f5975a, cVar.f5976b), null);
                    if (dVarC != null) {
                        fC3 = (float) ((dVarC.f5979c * ((double) fFloatValue3) * ((double) k2.g.c()) * ((double) fD)) + ((double) fC3));
                    }
                    i16++;
                    str4 = str4;
                    fC2 = fC2;
                    i15 = i15;
                }
                float f10 = fC2;
                int i17 = i15;
                String str5 = str4;
                canvas.save();
                x(bVarF.f5967d, canvas, fC3);
                canvas.translate(0.0f, (i17 * f10) - (((size2 - 1) * f10) / 2.0f));
                int i18 = 0;
                while (i18 < str5.length()) {
                    String str6 = str5;
                    d2.d dVarC2 = this.M.f18338g.c(d2.d.a(str6.charAt(i18), cVar.f5975a, cVar.f5976b), null);
                    if (dVarC2 == null) {
                        listA2 = listA2;
                        i13 = size2;
                        str2 = str6;
                    } else {
                        if (this.I.containsKey(dVarC2)) {
                            list = this.I.get(dVarC2);
                            i13 = size2;
                            str2 = str6;
                        } else {
                            List<n> list2 = dVarC2.f5977a;
                            int size3 = list2.size();
                            ArrayList arrayList = new ArrayList(size3);
                            int i19 = 0;
                            while (i19 < size3) {
                                arrayList.add(new a2.c(this.L, this, list2.get(i19)));
                                i19++;
                                str6 = str6;
                                size2 = size2;
                                list2 = list2;
                            }
                            i13 = size2;
                            str2 = str6;
                            this.I.put(dVarC2, arrayList);
                            list = arrayList;
                        }
                        int i20 = 0;
                        while (i20 < list.size()) {
                            Path pathA = list.get(i20).a();
                            pathA.computeBounds(this.E, false);
                            this.F.set(matrix);
                            List<a2.c> list3 = list;
                            this.F.preTranslate(0.0f, (-bVarF.f5970g) * k2.g.c());
                            this.F.preScale(fFloatValue3, fFloatValue3);
                            pathA.transform(this.F);
                            if (bVarF.f5974k) {
                                z(pathA, this.G, canvas);
                                z(pathA, this.H, canvas);
                            } else {
                                z(pathA, this.H, canvas);
                                z(pathA, this.G, canvas);
                            }
                            i20++;
                            list = list3;
                        }
                        float fC4 = k2.g.c() * ((float) dVarC2.f5979c) * fFloatValue3 * fD;
                        float f11 = bVarF.f5968e / 10.0f;
                        b2.a<Float, Float> aVar10 = this.U;
                        if (aVar10 != null) {
                            fFloatValue2 = aVar10.f().floatValue();
                        } else {
                            b2.a<Float, Float> aVar11 = this.T;
                            if (aVar11 != null) {
                                fFloatValue2 = aVar11.f().floatValue();
                            }
                            canvas.translate((f11 * fD) + fC4, 0.0f);
                        }
                        f11 += fFloatValue2;
                        canvas.translate((f11 * fD) + fC4, 0.0f);
                    }
                    i18++;
                    listA2 = listA2;
                    str5 = str2;
                    size2 = i13;
                }
                canvas.restore();
                i15 = i17 + 1;
                fC2 = f10;
            }
        } else {
            b2.a<Typeface, Typeface> aVar12 = this.W;
            if (aVar12 == null || (typefaceF = aVar12.f()) == null) {
                e0 e0Var = this.L;
                String str7 = cVar.f5975a;
                String str8 = cVar.f5976b;
                if (e0Var.getCallback() == null) {
                    aVar = null;
                } else {
                    if (e0Var.f18316s == null) {
                        e0Var.f18316s = new c2.a(e0Var.getCallback());
                    }
                    aVar = e0Var.f18316s;
                }
                if (aVar != null) {
                    y0.r rVar = aVar.f3815a;
                    rVar.f18271b = str7;
                    rVar.f18272c = str8;
                    Typeface typefaceCreate = aVar.f3816b.get(rVar);
                    if (typefaceCreate == null) {
                        typefaceCreate = aVar.f3817c.get(str7);
                        if (typefaceCreate == null) {
                            StringBuilder sbH = r0.h("fonts/", str7);
                            sbH.append(aVar.f3819e);
                            typefaceCreate = Typeface.createFromAsset(aVar.f3818d, sbH.toString());
                            aVar.f3817c.put(str7, typefaceCreate);
                        }
                        boolean zContains = str8.contains("Italic");
                        boolean zContains2 = str8.contains("Bold");
                        if (zContains && zContains2) {
                            i11 = 3;
                        } else if (zContains) {
                            i11 = 2;
                        } else {
                            i11 = zContains2 ? 1 : 0;
                        }
                        if (typefaceCreate.getStyle() != i11) {
                            typefaceCreate = Typeface.create(typefaceCreate, i11);
                        }
                        aVar.f3816b.put(aVar.f3815a, typefaceCreate);
                    }
                    typefaceF = typefaceCreate;
                } else {
                    typefaceF = null;
                }
                if (typefaceF == null) {
                    typefaceF = null;
                }
            }
            if (typefaceF != null) {
                String str9 = bVarF.f5964a;
                Objects.requireNonNull(this.L);
                this.G.setTypeface(typefaceF);
                b2.a<Float, Float> aVar13 = this.V;
                float fFloatValue4 = aVar13 != null ? aVar13.f().floatValue() : bVarF.f5966c;
                this.G.setTextSize(k2.g.c() * fFloatValue4);
                this.H.setTypeface(this.G.getTypeface());
                this.H.setTextSize(this.G.getTextSize());
                float fC5 = k2.g.c() * bVarF.f5969f;
                float f12 = bVarF.f5968e / 10.0f;
                b2.a<Float, Float> aVar14 = this.U;
                if (aVar14 != null) {
                    fFloatValue = aVar14.f().floatValue();
                } else {
                    b2.a<Float, Float> aVar15 = this.T;
                    if (aVar15 != null) {
                        fFloatValue = aVar15.f().floatValue();
                    }
                    fC = ((k2.g.c() * f12) * fFloatValue4) / 100.0f;
                    listA = A(str9);
                    size = listA.size();
                    i12 = 0;
                    while (i12 < size) {
                        str = listA.get(i12);
                        float length2 = ((str.length() - i14) * fC) + this.H.measureText(str);
                        canvas.save();
                        x(bVarF.f5967d, canvas, length2);
                        canvas.translate(0.0f, (i12 * fC5) - (((size - 1) * fC5) / 2.0f));
                        length = 0;
                        while (length < str.length()) {
                            iCodePointAt = str.codePointAt(length);
                            iCharCount = Character.charCount(iCodePointAt) + length;
                            while (iCharCount < str.length()) {
                                iCodePointAt2 = str.codePointAt(iCharCount);
                                if (Character.getType(iCodePointAt2) != 16 || Character.getType(iCodePointAt2) == 27 || Character.getType(iCodePointAt2) == 6 || Character.getType(iCodePointAt2) == 28 || Character.getType(iCodePointAt2) == 8 || Character.getType(iCodePointAt2) == 19) {
                                    z11 = true;
                                } else {
                                    z11 = false;
                                }
                                if (!z11) {
                                    break;
                                }
                                iCharCount += Character.charCount(iCodePointAt2);
                                iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
                            }
                            dVar = this.J;
                            j10 = iCodePointAt;
                            if (dVar.f12584h) {
                                dVar.c();
                            }
                            if (k0.f(dVar.f12585i, dVar.f12587k, j10) >= 0) {
                                z10 = true;
                            } else {
                                z10 = false;
                            }
                            if (z10) {
                                string = this.J.d(j10, null);
                            } else {
                                this.D.setLength(0);
                                iCharCount2 = length;
                                while (iCharCount2 < iCharCount) {
                                    int iCodePointAt3 = str.codePointAt(iCharCount2);
                                    this.D.appendCodePoint(iCodePointAt3);
                                    iCharCount2 += Character.charCount(iCodePointAt3);
                                }
                                string = this.D.toString();
                                this.J.f(j10, string);
                            }
                            length += string.length();
                            if (bVarF.f5974k) {
                                y(string, this.G, canvas);
                                y(string, this.H, canvas);
                            } else {
                                y(string, this.H, canvas);
                                y(string, this.G, canvas);
                            }
                            canvas.translate(this.G.measureText(string) + fC, 0.0f);
                        }
                        canvas.restore();
                        i12++;
                        i14 = 1;
                    }
                }
                f12 += fFloatValue;
                fC = ((k2.g.c() * f12) * fFloatValue4) / 100.0f;
                listA = A(str9);
                size = listA.size();
                i12 = 0;
                while (i12 < size) {
                    str = listA.get(i12);
                    float length3 = ((str.length() - i14) * fC) + this.H.measureText(str);
                    canvas.save();
                    x(bVarF.f5967d, canvas, length3);
                    canvas.translate(0.0f, (i12 * fC5) - (((size - 1) * fC5) / 2.0f));
                    length = 0;
                    while (length < str.length()) {
                        iCodePointAt = str.codePointAt(length);
                        iCharCount = Character.charCount(iCodePointAt) + length;
                        while (iCharCount < str.length()) {
                            iCodePointAt2 = str.codePointAt(iCharCount);
                            if (Character.getType(iCodePointAt2) != 16) {
                                z11 = true;
                            } else {
                                z11 = true;
                            }
                            if (!z11) {
                                break;
                                break;
                            } else {
                                iCharCount += Character.charCount(iCodePointAt2);
                                iCodePointAt = (iCodePointAt * 31) + iCodePointAt2;
                            }
                        }
                        dVar = this.J;
                        j10 = iCodePointAt;
                        if (dVar.f12584h) {
                            dVar.c();
                        }
                        if (k0.f(dVar.f12585i, dVar.f12587k, j10) >= 0) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (z10) {
                            string = this.J.d(j10, null);
                        } else {
                            this.D.setLength(0);
                            iCharCount2 = length;
                            while (iCharCount2 < iCharCount) {
                                int iCodePointAt4 = str.codePointAt(iCharCount2);
                                this.D.appendCodePoint(iCodePointAt4);
                                iCharCount2 += Character.charCount(iCodePointAt4);
                            }
                            string = this.D.toString();
                            this.J.f(j10, string);
                        }
                        length += string.length();
                        if (bVarF.f5974k) {
                            y(string, this.G, canvas);
                            y(string, this.H, canvas);
                        } else {
                            y(string, this.H, canvas);
                            y(string, this.G, canvas);
                        }
                        canvas.translate(this.G.measureText(string) + fC, 0.0f);
                    }
                    canvas.restore();
                    i12++;
                    i14 = 1;
                }
            }
        }
        canvas.restore();
    }

    public final void x(int i10, Canvas canvas, float f10) {
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 1) {
            canvas.translate(-f10, 0.0f);
        } else {
            if (i11 != 2) {
                return;
            }
            canvas.translate((-f10) / 2.0f, 0.0f);
        }
    }

    public final void y(String str, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawText(str, 0, str.length(), 0.0f, 0.0f, paint);
    }

    public final void z(Path path, Paint paint, Canvas canvas) {
        if (paint.getColor() == 0) {
            return;
        }
        if (paint.getStyle() == Paint.Style.STROKE && paint.getStrokeWidth() == 0.0f) {
            return;
        }
        canvas.drawPath(path, paint);
    }
}
