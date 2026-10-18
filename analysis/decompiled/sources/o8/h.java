package o8;

import com.nike.adapt.ui.GoogleVoicePromptActivity;
import java.util.List;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.MainCoroutineDispatcher;

/* JADX INFO: compiled from: GoogleVoicePromptActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.GoogleVoicePromptActivity$typeWriteAnimWithTextFade$1", f = "GoogleVoicePromptActivity.kt", l = {83}, m = "invokeSuspend")
public final class h extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f12453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ GoogleVoicePromptActivity f12454i;

    /* JADX INFO: compiled from: GoogleVoicePromptActivity.kt */
    @ld.e(c = "com.nike.adapt.ui.GoogleVoicePromptActivity$typeWriteAnimWithTextFade$1$1", f = "GoogleVoicePromptActivity.kt", l = {112}, m = "invokeSuspend")
    public static final class a extends ld.i implements qd.p<CoroutineScope, jd.d<? super fd.o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public String f12455h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public rd.w f12456i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public List f12457j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f12458k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f12459l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f12460m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f12461n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f12462o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public final /* synthetic */ GoogleVoicePromptActivity f12463p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(GoogleVoicePromptActivity googleVoicePromptActivity, jd.d<? super a> dVar) {
            super(2, dVar);
            this.f12463p = googleVoicePromptActivity;
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new a(this.f12463p, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
            return ((a) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
        }

        /* JADX WARN: Code duplicated, block: B:18:0x0085  */
        /* JADX WARN: Code duplicated, block: B:20:0x010c A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:21:0x010d  */
        /* JADX WARN: Type inference failed for: r6v13, types: [T, android.text.SpannableString] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x010d -> B:22:0x0113). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // ld.a
        public final java.lang.Object invokeSuspend(java.lang.Object r20) {
            /*
                Method dump skipped, instruction units count: 362
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: o8.h.a.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(GoogleVoicePromptActivity googleVoicePromptActivity, jd.d<? super h> dVar) {
        super(2, dVar);
        this.f12454i = googleVoicePromptActivity;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new h(this.f12454i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super fd.o> dVar) {
        return ((h) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f12453h;
        if (i10 == 0) {
            d3.e.p(obj);
            MainCoroutineDispatcher main = Dispatchers.getMain();
            a aVar2 = new a(this.f12454i, null);
            this.f12453h = 1;
            if (BuildersKt.withContext(main, aVar2, this) == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        return fd.o.f7408a;
    }
}
