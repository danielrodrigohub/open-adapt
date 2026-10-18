package b7;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;

/* JADX INFO: compiled from: TextFormatEscaper.java */
/* JADX INFO: loaded from: classes.dex */
public final class j1 implements e3.g {
    public static final void b(View view, float f10, float f11, float f12, float f13) {
        view.setY(f10);
        view.setAlpha(f12);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "translationY", f10, f11);
        objectAnimatorOfFloat.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfFloat.setDuration(400L);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(view, "alpha", f13);
        objectAnimatorOfFloat2.setInterpolator(new DecelerateInterpolator());
        objectAnimatorOfFloat2.setDuration(400L);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2);
        animatorSet.start();
    }

    public static final void c(View view) {
        b(view, 0.0f, -75.0f, 1.0f, 0.0f);
    }

    public static String d(i iVar) {
        StringBuilder sb2 = new StringBuilder(iVar.size());
        for (int i10 = 0; i10 < iVar.size(); i10++) {
            byte bH = iVar.h(i10);
            if (bH == 34) {
                sb2.append("\\\"");
            } else if (bH == 39) {
                sb2.append("\\'");
            } else if (bH != 92) {
                switch (bH) {
                    case 7:
                        sb2.append("\\a");
                        break;
                    case 8:
                        sb2.append("\\b");
                        break;
                    case 9:
                        sb2.append("\\t");
                        break;
                    case 10:
                        sb2.append("\\n");
                        break;
                    case 11:
                        sb2.append("\\v");
                        break;
                    case 12:
                        sb2.append("\\f");
                        break;
                    case 13:
                        sb2.append("\\r");
                        break;
                    default:
                        if (bH < 32 || bH > 126) {
                            sb2.append('\\');
                            sb2.append((char) (((bH >>> 6) & 3) + 48));
                            sb2.append((char) (((bH >>> 3) & 7) + 48));
                            sb2.append((char) ((bH & 7) + 48));
                        } else {
                            sb2.append((char) bH);
                        }
                        break;
                }
            } else {
                sb2.append("\\\\");
            }
        }
        return sb2.toString();
    }

    @Override // e3.g
    public void a() {
    }
}
