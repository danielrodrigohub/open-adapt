package s8;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import p4.h;
import p8.m;

/* JADX INFO: compiled from: DataOptInConfirmationFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends m {

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public final String f15151c0 = "DataOptInConfirmationFragment";

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        h.j(layoutInflater, "inflater");
        View viewInflate = layoutInflater.inflate(R.layout.fragment_data_opt_confirmation, viewGroup, false);
        TrackManager.INSTANCE.dataOptInConfirmationPresented();
        return viewInflate;
    }

    @Override // p8.h
    public final String p0() {
        return this.f15151c0;
    }
}
