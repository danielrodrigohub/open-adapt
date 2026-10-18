package g6;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: TextDrawableHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f7767c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public WeakReference<b> f7769e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public j6.d f7770f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextPaint f7765a = new TextPaint(1);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f7766b = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f7768d = true;

    /* JADX INFO: compiled from: TextDrawableHelper.java */
    public class a extends j6.f {
        public a() {
        }

        @Override // j6.f
        public final void a(int i10) {
            l lVar = l.this;
            lVar.f7768d = true;
            b bVar = lVar.f7769e.get();
            if (bVar != null) {
                bVar.a();
            }
        }

        @Override // j6.f
        public final void b(Typeface typeface, boolean z10) {
            if (z10) {
                return;
            }
            l lVar = l.this;
            lVar.f7768d = true;
            b bVar = lVar.f7769e.get();
            if (bVar != null) {
                bVar.a();
            }
        }
    }

    /* JADX INFO: compiled from: TextDrawableHelper.java */
    public interface b {
        void a();

        int[] getState();

        boolean onStateChange(int[] iArr);
    }

    public l(b bVar) {
        this.f7769e = new WeakReference<>(null);
        this.f7769e = new WeakReference<>(bVar);
    }

    public final float a(String str) {
        if (!this.f7768d) {
            return this.f7767c;
        }
        float fMeasureText = str == null ? 0.0f : this.f7765a.measureText((CharSequence) str, 0, str.length());
        this.f7767c = fMeasureText;
        this.f7768d = false;
        return fMeasureText;
    }

    public final void b(j6.d dVar, Context context) {
        if (this.f7770f != dVar) {
            this.f7770f = dVar;
            if (dVar != null) {
                dVar.f(context, this.f7765a, this.f7766b);
                b bVar = this.f7769e.get();
                if (bVar != null) {
                    this.f7765a.drawableState = bVar.getState();
                }
                dVar.e(context, this.f7765a, this.f7766b);
                this.f7768d = true;
            }
            b bVar2 = this.f7769e.get();
            if (bVar2 != null) {
                bVar2.a();
                bVar2.onStateChange(bVar2.getState());
            }
        }
    }
}
