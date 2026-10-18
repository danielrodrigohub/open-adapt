package m9;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.R;
import com.nike.adapt.ui.settings.SupportTipsActivity;
import java.util.List;
import q7.o1;

/* JADX INFO: compiled from: SettingsTipsRecycleViewAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c0 extends RecyclerView.e<a> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<SupportTipsActivity.a> f10840d;

    /* JADX INFO: compiled from: SettingsTipsRecycleViewAdapter.kt */
    public static final class a extends RecyclerView.b0 {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final TextView f10841u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final TextView f10842v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final ImageView f10843w;

        public a(o1 o1Var) {
            super(o1Var.f13957a);
            TextView textView = o1Var.f13959c;
            p4.h.i(textView, "binding.itemTipHeading");
            this.f10841u = textView;
            TextView textView2 = o1Var.f13958b;
            p4.h.i(textView2, "binding.itemTipBody");
            this.f10842v = textView2;
            ImageView imageView = o1Var.f13960d;
            p4.h.i(imageView, "binding.itemTipIcon");
            this.f10843w = imageView;
        }
    }

    public c0(List<SupportTipsActivity.a> list) {
        this.f10840d = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        return this.f10840d.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, int i10) {
        a aVar = (a) b0Var;
        SupportTipsActivity.a aVar2 = this.f10840d.get(i10);
        aVar.f10841u.setText(aVar2.f5869a);
        aVar.f10842v.setText(aVar2.f5870b);
        aVar.f10843w.setImageResource(aVar2.f5871c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        p4.h.j(viewGroup, "parent");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_tip, viewGroup, false);
        int i11 = R.id.item_tip_body;
        TextView textView = (TextView) g7.b.d(viewInflate, R.id.item_tip_body);
        if (textView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) viewInflate;
            int i12 = R.id.item_tip_heading;
            TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.item_tip_heading);
            if (textView2 != null) {
                i12 = R.id.item_tip_icon;
                ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.item_tip_icon);
                if (imageView != null) {
                    return new a(new o1(relativeLayout, textView, textView2, imageView));
                }
            }
            i11 = i12;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
    }
}
