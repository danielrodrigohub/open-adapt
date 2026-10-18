package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import androidx.appcompat.widget.q;
import g6.c;
import j0.a0;

/* JADX INFO: loaded from: classes.dex */
public class CheckableImageButton extends q implements Checkable {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final int[] f5351n = {R.attr.state_checked};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f5352k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f5353l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f5354m;

    public static class a extends p0.a {
        public static final Parcelable.Creator<a> CREATOR = new C0090a();

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f5355j;

        /* JADX INFO: renamed from: com.google.android.material.internal.CheckableImageButton$a$a, reason: collision with other inner class name */
        public class C0090a implements Parcelable.ClassLoaderCreator<a> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final a createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new a(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i10) {
                return new a[i10];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new a(parcel, null);
            }
        }

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p0.a, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            parcel.writeParcelable(this.f12620h, i10);
            parcel.writeInt(this.f5355j ? 1 : 0);
        }

        public a(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f5355j = parcel.readInt() == 1;
        }
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, androidx.appcompat.R.attr.imageButtonStyle);
        this.f5353l = true;
        this.f5354m = true;
        a0.p(this, new c(this));
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f5352k;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i10) {
        if (!this.f5352k) {
            return super.onCreateDrawableState(i10);
        }
        return View.mergeDrawableStates(super.onCreateDrawableState(i10 + 1), f5351n);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.f12620h);
        setChecked(aVar.f5355j);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.f5355j = this.f5352k;
        return aVar;
    }

    public void setCheckable(boolean z10) {
        if (this.f5353l != z10) {
            this.f5353l = z10;
            sendAccessibilityEvent(0);
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z10) {
        if (!this.f5353l || this.f5352k == z10) {
            return;
        }
        this.f5352k = z10;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    public void setPressable(boolean z10) {
        this.f5354m = z10;
    }

    @Override // android.view.View
    public void setPressed(boolean z10) {
        if (this.f5354m) {
            super.setPressed(z10);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f5352k);
    }
}
