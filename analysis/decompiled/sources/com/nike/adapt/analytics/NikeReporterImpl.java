package com.nike.adapt.analytics;

import androidx.lifecycle.o;
import com.newrelic.agent.android.BuildConfig;
import com.newrelic.agent.android.NewRelic;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.BigfootApplicationState;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.presenter.profile.AdaptUser;
import f1.b;
import fd.d;
import gd.z;
import h8.c;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import o7.u;
import p4.h;
import qd.a;

/* JADX INFO: compiled from: ReportingGateKeeper.kt */
/* JADX INFO: loaded from: classes.dex */
final class NikeReporterImpl implements NikeReporter {
    private static final String KEY_CAUSE = "cause";
    private static final String KEY_TAG = "tag";
    private static final String SHOE_IDENTIFIER_BOTH = "shoeIdentifierBoth";
    private static final String SHOE_IDENTIFIER_LEFT = "shoeIdentifierLeft";
    private static final String SHOE_IDENTIFIER_RIGHT = "shoeIdentifierRight";
    private static final String eventType = "Log";
    private static final String logTypeEvent = "Log";
    private static final String performanceTypeEvent = "Performance";
    public static final NikeReporterImpl INSTANCE = new NikeReporterImpl();
    private static final d isRelease$delegate = o.x(AnonymousClass2.INSTANCE);
    private static final d sessionId$delegate = o.x(NikeReporterImpl$sessionId$2.INSTANCE);
    private static final SimpleDateFormat timeFormat = new SimpleDateFormat("EEEE, MMMMM dd, yyyy hh:mm:ss aaa zzzz", Locale.US);
    private static final Object lock = new Object();

    /* JADX INFO: renamed from: com.nike.adapt.analytics.NikeReporterImpl$isRelease$2, reason: invalid class name */
    /* JADX INFO: compiled from: ReportingGateKeeper.kt */
    public static final class AnonymousClass2 extends rd.o implements a<Boolean> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // qd.a
        public final Boolean invoke() {
            return Boolean.valueOf(yd.o.Z(BuildConfig.BUILD_TYPE, "RELEASE"));
        }
    }

    private NikeReporterImpl() {
    }

    private final void addShoeSerialNumber(HashMap<String, Object> map) {
        String serialNumber;
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        String serialNumber2 = inMemoryCache.getLeftDevice().getSerialNumber();
        if (serialNumber2 != null) {
            map.put(SHOE_IDENTIFIER_LEFT, b.n(serialNumber2));
        }
        String serialNumber3 = inMemoryCache.getRightDevice().getSerialNumber();
        if (serialNumber3 != null) {
            map.put(SHOE_IDENTIFIER_RIGHT, b.n(serialNumber3));
        }
        String serialNumber4 = inMemoryCache.getLeftDevice().getSerialNumber();
        if (serialNumber4 == null || (serialNumber = inMemoryCache.getRightDevice().getSerialNumber()) == null) {
            return;
        }
        map.put(SHOE_IDENTIFIER_BOTH, b.n(serialNumber4 + serialNumber));
    }

    private final Map<String, Object> getAttributes(String str, String str2, String str3) {
        HashMap<String, Object> map = new HashMap<>();
        String str4 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date());
        Objects.requireNonNull(BigfootApplicationState.f5662h);
        String str5 = BigfootApplicationState.f5665k ? "bg" : "fg";
        String strA = a0.b.a(str4, " → ", str, " → ", str5);
        map.put("applicationName", "Bigfoot Android");
        if (!(str3 == null || yd.o.b0(str3))) {
            map.put("duration", str3);
        }
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        String version = inMemoryCache.getLeftDevice().getAdaptFirmwareVersion().getVersion();
        if (version.length() > 0) {
            map.put("firmwareLeft", version);
        }
        String version2 = inMemoryCache.getRightDevice().getAdaptFirmwareVersion().getVersion();
        if (version2.length() > 0) {
            map.put("firmwareRight", version2);
        }
        addShoeSerialNumber(map);
        if (strA.length() > 0) {
            int length = strA.length();
            Object objSubstring = strA.substring(0, 4095 > length ? length : 4095);
            h.i(objSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            map.put("message", objSubstring);
        }
        map.put("sessionID", getSessionId());
        map.put("logType", str2);
        synchronized (lock) {
            Object obj = timeFormat.format(Calendar.getInstance().getTime());
            h.i(obj, "timeFormat.format(Calendar.getInstance().time)");
            map.put("time", obj);
        }
        map.put("applicationState", str5);
        map.put("os", "Android");
        map.put("applicationVersion", "1.29.3");
        AdaptUser adaptUserR = c.f8298b.R();
        if (adaptUserR != null) {
            map.put(AnalyticsAttribute.USER_ID_ATTRIBUTE, adaptUserR.getNuid());
        }
        return map;
    }

    public static /* synthetic */ Map getAttributes$default(NikeReporterImpl nikeReporterImpl, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        return nikeReporterImpl.getAttributes(str, str2, str3);
    }

    private final String getSessionId() {
        return (String) sessionId$delegate.getValue();
    }

    private final boolean isRelease() {
        return ((Boolean) isRelease$delegate.getValue()).booleanValue();
    }

    private final void notifyEvent(String str, Map<String, ? extends Object> map) {
        if (isRelease()) {
            if (map == null) {
                NewRelic.recordBreadcrumb("Log", getAttributes$default(this, str, "action", null, 4, null));
                return;
            }
            Map mapF = z.F(getAttributes$default(this, str, "action", null, 4, null));
            mapF.putAll(map);
            NewRelic.recordBreadcrumb("Log", mapF);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void notifyEvent$default(NikeReporterImpl nikeReporterImpl, String str, Map map, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            map = null;
        }
        nikeReporterImpl.notifyEvent(str, map);
    }

    public final Object getLock() {
        return lock;
    }

    @Override // com.nike.adapt.analytics.NikeReporter
    public void initialize() {
        NewRelic.withApplicationToken("AAb9fcb58709db55cac5bbcb2047a26c65c1122fb5").start(BigfootApplication.f5638p.a());
    }

    @Override // com.nike.adapt.analytics.NikeReporter, o7.o
    public void log(u uVar, String str, String str2, Map<String, ? extends Object> map, Throwable th, String str3) {
        Throwable cause;
        h.j(uVar, "logLevel");
        h.j(str, KEY_TAG);
        h.j(str2, "message");
        HashMap map2 = new HashMap();
        String strName = uVar.name();
        Locale locale = Locale.US;
        h.i(locale, "US");
        String lowerCase = strName.toLowerCase(locale);
        h.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        map2.put(KEY_TAG, str);
        if (th != null && (cause = th.getCause()) != null) {
            map2.put("cause", cause);
        }
        String str4 = !(str3 == null || yd.o.b0(str3)) ? performanceTypeEvent : "Log";
        Map mapF = z.F(INSTANCE.getAttributes(str2, lowerCase, str3));
        mapF.putAll(mapF);
        if (map != null) {
            mapF.putAll(map);
        }
        NewRelic.recordCustomEvent(str4, mapF);
    }

    @Override // com.nike.adapt.analytics.NikeReporter
    public void report(Track track) {
        h.j(track, "track");
        notifyEvent(track.getEvent(), track.getData());
    }
}
