package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageView;
import java.util.Objects;

/* JADX INFO: compiled from: AppCompatImageView.java */
/* JADX INFO: loaded from: classes.dex */
public class s extends ImageView {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e f1444h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final r f1445i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f1446j;

    public s(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f1444h;
        if (eVar != null) {
            eVar.a();
        }
        r rVar = this.f1445i;
        if (rVar != null) {
            rVar.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f1444h;
        if (eVar != null) {
            return eVar.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f1444h;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        d1 d1Var;
        r rVar = this.f1445i;
        if (rVar == null || (d1Var = rVar.f1418b) == null) {
            return null;
        }
        return d1Var.f1222a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        d1 d1Var;
        r rVar = this.f1445i;
        if (rVar == null || (d1Var = rVar.f1418b) == null) {
            return null;
        }
        return d1Var.f1223b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        return ((this.f1445i.f1417a.getBackground() instanceof RippleDrawable) ^ true) && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f1444h;
        if (eVar != null) {
            eVar.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i10) {
        super.setBackgroundResource(i10);
        e eVar = this.f1444h;
        if (eVar != null) {
            eVar.f(i10);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        r rVar = this.f1445i;
        if (rVar != null) {
            rVar.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        r rVar = this.f1445i;
        if (rVar != null && drawable != null && !this.f1446j) {
            Objects.requireNonNull(rVar);
            rVar.f1419c = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        r rVar2 = this.f1445i;
        if (rVar2 != null) {
            rVar2.a();
            if (this.f1446j) {
                return;
            }
            r rVar3 = this.f1445i;
            if (rVar3.f1417a.getDrawable() != null) {
                rVar3.f1417a.getDrawable().setLevel(rVar3.f1419c);
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i10) {
        super.setImageLevel(i10);
        this.f1446j = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i10) {
        r rVar = this.f1445i;
        if (rVar != null) {
            rVar.c(i10);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        r rVar = this.f1445i;
        if (rVar != null) {
            rVar.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f1444h;
        if (eVar != null) {
            eVar.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f1444h;
        if (eVar != null) {
            eVar.i(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        r rVar = this.f1445i;
        if (rVar != null) {
            rVar.d(colorStateList);
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        r rVar = this.f1445i;
        if (rVar != null) {
            rVar.e(mode);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        c1.a(context);
        this.f1446j = false;
        a1.a(this, getContext());
        e eVar = new e(this);
        this.f1444h = eVar;
        eVar.d(attributeSet, i10);
        r rVar = new r(this);
        this.f1445i = rVar;
        rVar.b(attributeSet, i10);
    }
}
