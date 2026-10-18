package g5;

import android.graphics.Bitmap;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Pair;
import com.newrelic.agent.android.instrumentation.BitmapFactoryInstrumentation;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.TreeMap;
import java.util.TreeSet;
import m5.g0;

/* JADX INFO: compiled from: TtmlSubtitle.java */
/* JADX INFO: loaded from: classes.dex */
public final class g implements z4.g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final d f7697h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long[] f7698i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Map<String, f> f7699j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Map<String, e> f7700k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final Map<String, String> f7701l;

    public g(d dVar, Map<String, f> map, Map<String, e> map2, Map<String, String> map3) {
        this.f7697h = dVar;
        this.f7700k = map2;
        this.f7701l = map3;
        this.f7699j = Collections.unmodifiableMap(map);
        TreeSet<Long> treeSet = new TreeSet<>();
        int i10 = 0;
        dVar.e(treeSet, false);
        long[] jArr = new long[treeSet.size()];
        Iterator<Long> it = treeSet.iterator();
        while (it.hasNext()) {
            jArr[i10] = it.next().longValue();
            i10++;
        }
        this.f7698i = jArr;
    }

    @Override // z4.g
    public final int b(long j10) {
        int iB = g0.b(this.f7698i, j10, false);
        if (iB < this.f7698i.length) {
            return iB;
        }
        return -1;
    }

    @Override // z4.g
    public final long g(int i10) {
        return this.f7698i[i10];
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // z4.g
    public final List<z4.a> i(long j10) {
        d dVar = this.f7697h;
        Map<String, f> map = this.f7699j;
        Map<String, e> map2 = this.f7700k;
        Map<String, String> map3 = this.f7701l;
        Objects.requireNonNull(dVar);
        ArrayList<Pair> arrayList = new ArrayList();
        dVar.h(j10, dVar.f7662h, arrayList);
        TreeMap treeMap = new TreeMap();
        dVar.j(j10, false, dVar.f7662h, treeMap);
        dVar.i(j10, map, map2, dVar.f7662h, treeMap);
        ArrayList arrayList2 = new ArrayList();
        for (Pair pair : arrayList) {
            String str = map3.get(pair.second);
            if (str != null) {
                byte[] bArrDecode = Base64.decode(str, 0);
                Bitmap bitmapDecodeByteArray = BitmapFactoryInstrumentation.decodeByteArray(bArrDecode, 0, bArrDecode.length);
                e eVar = map2.get(pair.first);
                Objects.requireNonNull(eVar);
                arrayList2.add(new z4.a(null, null, null, bitmapDecodeByteArray, eVar.f7670c, 0, eVar.f7672e, eVar.f7669b, 0, Integer.MIN_VALUE, -3.4028235E38f, eVar.f7673f, eVar.f7674g, false, -16777216, eVar.f7677j, 0.0f));
            }
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            e eVar2 = map2.get(entry.getKey());
            Objects.requireNonNull(eVar2);
            z4.a.C0332a c0332a = (z4.a.C0332a) entry.getValue();
            CharSequence charSequence = c0332a.f19311a;
            Objects.requireNonNull(charSequence);
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequence;
            for (a aVar : (a[]) spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), a.class)) {
                spannableStringBuilder.replace(spannableStringBuilder.getSpanStart(aVar), spannableStringBuilder.getSpanEnd(aVar), (CharSequence) "");
            }
            for (int i10 = 0; i10 < spannableStringBuilder.length(); i10++) {
                if (spannableStringBuilder.charAt(i10) == ' ') {
                    int i11 = i10 + 1;
                    int i12 = i11;
                    while (i12 < spannableStringBuilder.length() && spannableStringBuilder.charAt(i12) == ' ') {
                        i12++;
                    }
                    int i13 = i12 - i11;
                    if (i13 > 0) {
                        spannableStringBuilder.delete(i10, i13 + i10);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(0) == ' ') {
                spannableStringBuilder.delete(0, 1);
            }
            for (int i14 = 0; i14 < spannableStringBuilder.length() - 1; i14++) {
                if (spannableStringBuilder.charAt(i14) == '\n') {
                    int i15 = i14 + 1;
                    if (spannableStringBuilder.charAt(i15) == ' ') {
                        spannableStringBuilder.delete(i15, i14 + 2);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == ' ') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            for (int i16 = 0; i16 < spannableStringBuilder.length() - 1; i16++) {
                if (spannableStringBuilder.charAt(i16) == ' ') {
                    int i17 = i16 + 1;
                    if (spannableStringBuilder.charAt(i17) == '\n') {
                        spannableStringBuilder.delete(i16, i17);
                    }
                }
            }
            if (spannableStringBuilder.length() > 0 && spannableStringBuilder.charAt(spannableStringBuilder.length() - 1) == '\n') {
                spannableStringBuilder.delete(spannableStringBuilder.length() - 1, spannableStringBuilder.length());
            }
            float f10 = eVar2.f7670c;
            int i18 = eVar2.f7671d;
            c0332a.f19315e = f10;
            c0332a.f19316f = i18;
            c0332a.f19317g = eVar2.f7672e;
            c0332a.f19318h = eVar2.f7669b;
            c0332a.f19322l = eVar2.f7673f;
            float f11 = eVar2.f7676i;
            int i19 = eVar2.f7675h;
            c0332a.f19321k = f11;
            c0332a.f19320j = i19;
            c0332a.f19326p = eVar2.f7677j;
            arrayList2.add(c0332a.a());
        }
        return arrayList2;
    }

    @Override // z4.g
    public final int j() {
        return this.f7698i.length;
    }
}
