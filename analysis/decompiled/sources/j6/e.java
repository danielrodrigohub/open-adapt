package j6;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;

/* JADX INFO: compiled from: TextAppearance.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f9461a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TextPaint f9462b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f9463c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d f9464d;

    public e(d dVar, Context context, TextPaint textPaint, f fVar) {
        this.f9464d = dVar;
        this.f9461a = context;
        this.f9462b = textPaint;
        this.f9463c = fVar;
    }

    @Override // j6.f
    public final void a(int i10) {
        this.f9463c.a(i10);
    }

    @Override // j6.f
    public final void b(Typeface typeface, boolean z10) {
        this.f9464d.g(this.f9461a, this.f9462b, typeface);
        this.f9463c.b(typeface, z10);
    }
}
