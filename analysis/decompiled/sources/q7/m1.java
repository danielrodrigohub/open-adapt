package q7;

import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nike.adapt.R;

/* JADX INFO: compiled from: ItemShoeControllerContainerCombinedBinding.java */
/* JADX INFO: loaded from: classes.dex */
public final class m1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l1 f13927a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final l1 f13928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConstraintLayout f13929c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ImageView f13930d;

    public m1(l1 l1Var, l1 l1Var2, ConstraintLayout constraintLayout, ImageView imageView) {
        this.f13927a = l1Var;
        this.f13928b = l1Var2;
        this.f13929c = constraintLayout;
        this.f13930d = imageView;
    }

    public static m1 a(View view) {
        int i10 = R.id.left_shoe_controller_container;
        View viewD = g7.b.d(view, R.id.left_shoe_controller_container);
        if (viewD != null) {
            l1 l1VarA = l1.a(viewD);
            View viewD2 = g7.b.d(view, R.id.right_shoe_controller_container);
            if (viewD2 != null) {
                l1 l1VarA2 = l1.a(viewD2);
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                ImageView imageView = (ImageView) g7.b.d(view, R.id.slit);
                if (imageView != null) {
                    return new m1(l1VarA, l1VarA2, constraintLayout, imageView);
                }
                i10 = R.id.slit;
            } else {
                i10 = R.id.right_shoe_controller_container;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }
}
