package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.KeyEvent;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class SeekBarPreference extends Preference {
    public int T;
    public int U;
    public int V;
    public int W;
    public boolean X;
    public SeekBar Y;
    public TextView Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public boolean f2297a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public boolean f2298b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f2299c0;
    public final a d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public final b f2300e0;

    public class a implements SeekBar.OnSeekBarChangeListener {
        public a() {
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onProgressChanged(SeekBar seekBar, int i10, boolean z10) {
            if (z10) {
                SeekBarPreference seekBarPreference = SeekBarPreference.this;
                if (seekBarPreference.f2299c0 || !seekBarPreference.X) {
                    int progress = seekBar.getProgress() + seekBarPreference.U;
                    if (progress != seekBarPreference.T) {
                        seekBarPreference.L(progress, false);
                        return;
                    }
                    return;
                }
            }
            SeekBarPreference seekBarPreference2 = SeekBarPreference.this;
            seekBarPreference2.M(i10 + seekBarPreference2.U);
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStartTrackingTouch(SeekBar seekBar) {
            SeekBarPreference.this.X = true;
        }

        @Override // android.widget.SeekBar.OnSeekBarChangeListener
        public final void onStopTrackingTouch(SeekBar seekBar) {
            int progress;
            SeekBarPreference.this.X = false;
            int progress2 = seekBar.getProgress();
            SeekBarPreference seekBarPreference = SeekBarPreference.this;
            int i10 = seekBarPreference.U;
            if (progress2 + i10 == seekBarPreference.T || (progress = seekBar.getProgress() + i10) == seekBarPreference.T) {
                return;
            }
            seekBarPreference.L(progress, false);
        }
    }

    public class b implements View.OnKeyListener {
        public b() {
        }

        @Override // android.view.View.OnKeyListener
        public final boolean onKey(View view, int i10, KeyEvent keyEvent) {
            if (keyEvent.getAction() != 0) {
                return false;
            }
            SeekBarPreference seekBarPreference = SeekBarPreference.this;
            if ((!seekBarPreference.f2297a0 && (i10 == 21 || i10 == 22)) || i10 == 23 || i10 == 66) {
                return false;
            }
            SeekBar seekBar = seekBarPreference.Y;
            if (seekBar != null) {
                return seekBar.onKeyDown(i10, keyEvent);
            }
            Log.e("SeekBarPreference", "SeekBar view is null and hence cannot be adjusted.");
            return false;
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, 0);
        this.d0 = new a();
        this.f2300e0 = new b();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SeekBarPreference, i10, 0);
        this.U = typedArrayObtainStyledAttributes.getInt(R.styleable.SeekBarPreference_min, 0);
        int i12 = typedArrayObtainStyledAttributes.getInt(R.styleable.SeekBarPreference_android_max, 100);
        int i13 = this.U;
        i12 = i12 < i13 ? i13 : i12;
        if (i12 != this.V) {
            this.V = i12;
            q();
        }
        int i14 = typedArrayObtainStyledAttributes.getInt(R.styleable.SeekBarPreference_seekBarIncrement, 0);
        if (i14 != this.W) {
            this.W = Math.min(this.V - this.U, Math.abs(i14));
            q();
        }
        this.f2297a0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SeekBarPreference_adjustable, true);
        this.f2298b0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SeekBarPreference_showSeekBarValue, false);
        this.f2299c0 = typedArrayObtainStyledAttributes.getBoolean(R.styleable.SeekBarPreference_updatesContinuously, false);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public final Object A(TypedArray typedArray, int i10) {
        return Integer.valueOf(typedArray.getInt(i10, 0));
    }

    @Override // androidx.preference.Preference
    public final void B(Parcelable parcelable) {
        if (!parcelable.getClass().equals(c.class)) {
            super.B(parcelable);
            return;
        }
        c cVar = (c) parcelable;
        super.B(cVar.getSuperState());
        this.T = cVar.f2303h;
        this.U = cVar.f2304i;
        this.V = cVar.f2305j;
        q();
    }

    @Override // androidx.preference.Preference
    public final Parcelable C() {
        this.P = true;
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.f2288x) {
            return absSavedState;
        }
        c cVar = new c(absSavedState);
        cVar.f2303h = this.T;
        cVar.f2304i = this.U;
        cVar.f2305j = this.V;
        return cVar;
    }

    @Override // androidx.preference.Preference
    public final void D(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        L(k(((Integer) obj).intValue()), true);
    }

    public final void L(int i10, boolean z10) {
        int i11 = this.U;
        if (i10 < i11) {
            i10 = i11;
        }
        int i12 = this.V;
        if (i10 > i12) {
            i10 = i12;
        }
        if (i10 != this.T) {
            this.T = i10;
            M(i10);
            if (I() && i10 != k(~i10)) {
                SharedPreferences.Editor editorC = this.f2273i.c();
                editorC.putInt(this.f2282r, i10);
                J(editorC);
            }
            if (z10) {
                q();
            }
        }
    }

    public final void M(int i10) {
        TextView textView = this.Z;
        if (textView != null) {
            textView.setText(String.valueOf(i10));
        }
    }

    @Override // androidx.preference.Preference
    public final void x(g gVar) {
        super.x(gVar);
        gVar.f2453a.setOnKeyListener(this.f2300e0);
        this.Y = (SeekBar) gVar.A(R.id.seekbar);
        TextView textView = (TextView) gVar.A(R.id.seekbar_value);
        this.Z = textView;
        if (this.f2298b0) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.Z = null;
        }
        SeekBar seekBar = this.Y;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.d0);
        this.Y.setMax(this.V - this.U);
        int i10 = this.W;
        if (i10 != 0) {
            this.Y.setKeyProgressIncrement(i10);
        } else {
            this.W = this.Y.getKeyProgressIncrement();
        }
        this.Y.setProgress(this.T - this.U);
        M(this.T);
        this.Y.setEnabled(p());
    }

    public static class c extends Preference.b {
        public static final Parcelable.Creator<c> CREATOR = new a();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f2303h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f2304i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f2305j;

        public class a implements Parcelable.Creator<c> {
            @Override // android.os.Parcelable.Creator
            public final c createFromParcel(Parcel parcel) {
                return new c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final c[] newArray(int i10) {
                return new c[i10];
            }
        }

        public c(Parcel parcel) {
            super(parcel);
            this.f2303h = parcel.readInt();
            this.f2304i = parcel.readInt();
            this.f2305j = parcel.readInt();
        }

        @Override // android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f2303h);
            parcel.writeInt(this.f2304i);
            parcel.writeInt(this.f2305j);
        }

        public c(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.seekBarPreferenceStyle, 0);
    }
}
