package q7;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.helper.NotificationToast;

/* JADX INFO: compiled from: ActivityModeSelectionBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f13971a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextView f13972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextView f13973c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final RecyclerView f13974d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NotificationToast f13975e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final BottomSheet f13976f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final View f13977g;

    public q(CoordinatorLayout coordinatorLayout, ConstraintLayout constraintLayout, TextView textView, TextView textView2, RecyclerView recyclerView, NotificationToast notificationToast, BottomSheet bottomSheet, View view) {
        this.f13971a = constraintLayout;
        this.f13972b = textView;
        this.f13973c = textView2;
        this.f13974d = recyclerView;
        this.f13975e = notificationToast;
        this.f13976f = bottomSheet;
        this.f13977g = view;
    }
}
