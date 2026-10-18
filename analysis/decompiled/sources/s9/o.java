package s9;

import android.widget.TextView;
import com.nike.adapt.R;

/* JADX INFO: compiled from: PairingUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final o f15218a = new o();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h8.e f15219b = h8.e.f8306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h8.c f15220c = h8.c.f8298b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static long f15221d;

    public final void a(int i10, TextView textView, TextView textView2) {
        androidx.appcompat.widget.o.d(i10, "pairedState");
        textView.setText(i10 == 1 ? androidx.lifecycle.o.r(R.string.adapt_pairing_one_shoe_instruction) : androidx.lifecycle.o.r(R.string.adapt_pairing_second_shoe_instructions));
        textView.setContentDescription(i10 == 1 ? androidx.lifecycle.o.r(R.string.adapt_pairing_one_shoe_instruction) : androidx.lifecycle.o.r(R.string.adapt_pairing_second_shoe_instructions));
        textView.setTextColor(-16777216);
        j0.a0.q(textView, true);
        textView2.setText(androidx.lifecycle.o.r(R.string.aos_adapt_pairing_first_shoe_instructions_subtitle));
        textView2.setContentDescription(androidx.lifecycle.o.r(R.string.aos_adapt_pairing_first_shoe_instructions_subtitle));
        textView2.setVisibility(0);
        textView2.setTextColor(-16777216);
    }
}
