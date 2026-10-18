package m9;

import android.os.Bundle;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nike.adapt.R;
import com.nike.adapt.adk.InMemoryCache;
import java.util.Calendar;
import q7.v0;

/* JADX INFO: compiled from: FirmwareNoNetworkFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public final class h extends p8.b {

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final a f10869j0 = new a();

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public final String f10870h0 = "FirmwareNoNetworkFragment";

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public v0 f10871i0;

    /* JADX INFO: compiled from: FirmwareNoNetworkFragment.kt */
    public static final class a {
    }

    @Override // androidx.fragment.app.m
    public final View I(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        p4.h.j(layoutInflater, "inflater");
        View viewInflate = layoutInflater.inflate(R.layout.fragment_software_no_network, viewGroup, false);
        int i10 = R.id.firmware_no_network_build;
        TextView textView = (TextView) g7.b.d(viewInflate, R.id.firmware_no_network_build);
        if (textView != null) {
            i10 = R.id.firmware_no_network_icon;
            if (((ImageView) g7.b.d(viewInflate, R.id.firmware_no_network_icon)) != null) {
                i10 = R.id.firmware_no_network_icon_copyright;
                TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.firmware_no_network_icon_copyright);
                if (textView2 != null) {
                    i10 = R.id.firmware_no_network_icon_copyright_2;
                    if (((TextView) g7.b.d(viewInflate, R.id.firmware_no_network_icon_copyright_2)) != null) {
                        i10 = R.id.firmware_no_network_version;
                        TextView textView3 = (TextView) g7.b.d(viewInflate, R.id.firmware_no_network_version);
                        if (textView3 != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                            this.f10871i0 = new v0(constraintLayout, textView, textView2, textView3);
                            return constraintLayout;
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // androidx.fragment.app.m
    public final void U(View view, Bundle bundle) {
        p4.h.j(view, "view");
        o7.x.f12420a.a("FirmwareUpdateCrumb Firmware No Network : FW_STATS");
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        String version = inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion();
        String version2 = inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion();
        v0 v0Var = this.f10871i0;
        if (v0Var == null) {
            p4.h.C("binding");
            throw null;
        }
        v0Var.f14036c.setText(s9.e.b(d0().getString(R.string.adapt_version_number_title), new Pair("number", s9.g.f15195a.c(version, version2))));
        v0 v0Var2 = this.f10871i0;
        if (v0Var2 == null) {
            p4.h.C("binding");
            throw null;
        }
        v0Var2.f14034a.setText(s9.e.b(d0().getString(R.string.adapt_build_number_label), new Pair("number", "2017062198")));
        v0 v0Var3 = this.f10871i0;
        if (v0Var3 == null) {
            p4.h.C("binding");
            throw null;
        }
        v0Var3.f14035b.setText(s9.e.b(d0().getString(R.string.adapt_copyright_label), new Pair("year", String.valueOf(Calendar.getInstance().get(1)))));
    }

    @Override // p8.h
    public final String p0() {
        return this.f10870h0;
    }
}
