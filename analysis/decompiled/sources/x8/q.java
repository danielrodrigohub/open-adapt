package x8;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.TypedValue;
import android.view.animation.DecelerateInterpolator;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.nike.adapt.adk.api.PairDataRepository;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.BottomSheet;
import java.util.ArrayList;

/* JADX INFO: compiled from: BottomSheetManagers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f f17953a = new f();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e f17954b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final d f17955c = new d();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final c f17956d = new c();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final a f17957e = new a();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final b f17958f = new b();

    /* JADX INFO: compiled from: BottomSheetManagers.kt */
    public static final class a implements BottomSheet.a {
        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void a(Context context, BottomSheet bottomSheet) {
            p4.h.j(bottomSheet, "bottomSheet");
            bottomSheet.t();
            TrackManager.INSTANCE.autoLaceActionSheetUserSelectsOkay();
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void b() {
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void c(int i10, ConstraintLayout constraintLayout, Context context) {
            if (i10 == 3) {
                s9.b bVar = s9.b.f15177a;
                Object obj = null;
                String defaultAndConnectedId$default = PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null);
                ArrayList<v7.k> arrayListO = s9.b.f15178b.O();
                if (arrayListO == null) {
                    arrayListO = new ArrayList<>();
                }
                for (Object obj2 : arrayListO) {
                    if (p4.h.c(((v7.k) obj2).f16419a, defaultAndConnectedId$default)) {
                        obj = obj2;
                        break;
                    }
                }
                v7.k kVar = (v7.k) obj;
                if (kVar != null) {
                    kVar.f16421c = true;
                }
                s9.b.f15178b.a(arrayListO);
                TrackManager.INSTANCE.autoLaceActionSheetPresented();
            }
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void d(BottomSheet bottomSheet) {
        }
    }

    /* JADX INFO: compiled from: BottomSheetManagers.kt */
    public static final class b implements BottomSheet.a {
        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void a(Context context, BottomSheet bottomSheet) {
            p4.h.j(bottomSheet, "bottomSheet");
            TrackManager.INSTANCE.gestureFirmwareUpdateNotificationSelected();
            if (context instanceof Activity) {
                new h9.n(true, false).e((Activity) context);
            }
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void b() {
            TrackManager.INSTANCE.gestureFirmwareUpdateNotificationDismissed();
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void c(int i10, ConstraintLayout constraintLayout, Context context) {
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void d(BottomSheet bottomSheet) {
        }
    }

    /* JADX INFO: compiled from: BottomSheetManagers.kt */
    public static final class c implements BottomSheet.a {
        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void a(Context context, BottomSheet bottomSheet) {
            p4.h.j(bottomSheet, "bottomSheet");
            if (context instanceof Activity) {
                new h9.n(true, false).e((Activity) context);
                TrackManager.INSTANCE.lightPacksUpdateFirmwareActionSheetUpdateButtonSelected();
            }
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void b() {
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void c(int i10, ConstraintLayout constraintLayout, Context context) {
            if (i10 == 3) {
                TrackManager.INSTANCE.lightPacksUpdateFirmwareActionSheetPresented();
            }
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void d(BottomSheet bottomSheet) {
            TrackManager.INSTANCE.lightPacksUpdateFirmwareActionSheetDismissButtonSelected();
        }
    }

    /* JADX INFO: compiled from: BottomSheetManagers.kt */
    public static final class d implements BottomSheet.a {
        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void a(Context context, BottomSheet bottomSheet) {
            p4.h.j(bottomSheet, "bottomSheet");
            if (context instanceof Activity) {
                new h9.v0(false, 1, null).e((Activity) context);
                TrackManager.INSTANCE.lightPacksActivatedActionSheetOkButtonSelected();
            }
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void b() {
            TrackManager.INSTANCE.lightPacksActivatedActionSheetDismissButtonSelected();
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void c(int i10, ConstraintLayout constraintLayout, Context context) {
            if (i10 == 3) {
                TrackManager.INSTANCE.lightPacksActivatedActionSheetPresented();
            }
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void d(BottomSheet bottomSheet) {
        }
    }

    /* JADX INFO: compiled from: BottomSheetManagers.kt */
    public static final class e implements BottomSheet.a {
        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void a(Context context, BottomSheet bottomSheet) {
            p4.h.j(bottomSheet, "bottomSheet");
            if (context instanceof Activity) {
                new h9.n(true, false).e((Activity) context);
            }
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void b() {
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void c(int i10, ConstraintLayout constraintLayout, Context context) {
            if (i10 == 3) {
                TrackManager.INSTANCE.pulsingLightsFirmwareNotificationPresented();
            }
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void d(BottomSheet bottomSheet) {
        }
    }

    /* JADX INFO: compiled from: BottomSheetManagers.kt */
    public static final class f implements BottomSheet.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f17959a = 4;

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void a(Context context, BottomSheet bottomSheet) {
            p4.h.j(bottomSheet, "bottomSheet");
            TrackManager.INSTANCE.googleVoiceLacingNotificationTryNow();
            context.startActivity(new Intent("android.intent.action.VOICE_COMMAND").setFlags(268435456));
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void b() {
            TrackManager.INSTANCE.googleVoiceLacingNotificationDismiss();
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void c(int i10, ConstraintLayout constraintLayout, Context context) {
            float fApplyDimension = TypedValue.applyDimension(1, 35.0f, context.getResources().getDisplayMetrics());
            if (i10 == 4) {
                constraintLayout.animate().setInterpolator(new DecelerateInterpolator()).alpha(0.0f).translationYBy(fApplyDimension).setDuration(0L).setStartDelay(0L).start();
            } else if (i10 == 2 && this.f17959a == 4) {
                TrackManager.INSTANCE.googleVoiceLacingNotificationPresented();
                constraintLayout.animate().setInterpolator(new DecelerateInterpolator()).alpha(1.0f).translationYBy(fApplyDimension * (-1)).setDuration(400L).setStartDelay(200L).start();
            }
            if (i10 != 2) {
                this.f17959a = i10;
            }
        }

        @Override // com.nike.adapt.ui.helper.BottomSheet.a
        public final void d(BottomSheet bottomSheet) {
            TrackManager.INSTANCE.googleVoiceLacingNotificationDismiss();
        }
    }
}
