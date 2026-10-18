package q8;

import com.nike.adapt.ui.battery.BatteryStateActivity;
import fd.o;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import qd.p;

/* JADX INFO: compiled from: BatteryStateActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.adapt.ui.battery.BatteryStateActivity$updateUI$1", f = "BatteryStateActivity.kt", l = {147, 148}, m = "invokeSuspend")
public final class i extends ld.i implements p<CoroutineScope, jd.d<? super o>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f14165h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ BatteryStateActivity f14166i;

    /* JADX INFO: compiled from: BatteryStateActivity.kt */
    @ld.e(c = "com.nike.adapt.ui.battery.BatteryStateActivity$updateUI$1$1", f = "BatteryStateActivity.kt", l = {149}, m = "invokeSuspend")
    public static final class a extends ld.i implements p<CoroutineScope, jd.d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f14167h;

        public a(jd.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return new a(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
            return new a(dVar).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f14167h;
            if (i10 == 0) {
                d3.e.p(obj);
                this.f14167h = 1;
                if (DelayKt.delay(1900L, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(BatteryStateActivity batteryStateActivity, jd.d<? super i> dVar) {
        super(2, dVar);
        this.f14166i = batteryStateActivity;
    }

    @Override // ld.a
    public final jd.d<o> create(Object obj, jd.d<?> dVar) {
        return new i(this.f14166i, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
        return ((i) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0300  */
    /* JADX WARN: Code duplicated, block: B:13:0x0028  */
    /* JADX WARN: Code duplicated, block: B:15:0x002c  */
    /* JADX WARN: Code duplicated, block: B:17:0x003d  */
    /* JADX WARN: Code duplicated, block: B:20:0x0060  */
    /* JADX WARN: Code duplicated, block: B:22:0x006e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0091  */
    /* JADX WARN: Code duplicated, block: B:27:0x009f  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:30:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:31:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:36:0x0102  */
    /* JADX WARN: Code duplicated, block: B:38:0x0111  */
    /* JADX WARN: Code duplicated, block: B:41:0x0131  */
    /* JADX WARN: Code duplicated, block: B:43:0x013e  */
    /* JADX WARN: Code duplicated, block: B:46:0x015e  */
    /* JADX WARN: Code duplicated, block: B:48:0x016d  */
    /* JADX WARN: Code duplicated, block: B:51:0x018a  */
    /* JADX WARN: Code duplicated, block: B:53:0x0194  */
    /* JADX WARN: Code duplicated, block: B:56:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:58:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:61:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:63:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:66:0x0203  */
    /* JADX WARN: Code duplicated, block: B:68:0x020d  */
    /* JADX WARN: Code duplicated, block: B:71:0x022b  */
    /* JADX WARN: Code duplicated, block: B:73:0x0235  */
    /* JADX WARN: Code duplicated, block: B:76:0x0250  */
    /* JADX WARN: Code duplicated, block: B:78:0x025a  */
    /* JADX WARN: Code duplicated, block: B:81:0x0275  */
    /* JADX WARN: Code duplicated, block: B:84:0x0290  */
    /* JADX WARN: Code duplicated, block: B:87:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:90:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:92:0x02e1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:95:0x02f3 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x02f1 -> B:11:0x0020). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:73:0x0235
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // ld.a
    public final java.lang.Object invokeSuspend(java.lang.Object r14) {
        /*
            Method dump skipped, instruction units count: 774
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q8.i.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
