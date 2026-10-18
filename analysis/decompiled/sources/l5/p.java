package l5;

import android.content.Context;
import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.newrelic.agent.android.tracing.ActivityTrace;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import u6.p0;

/* JADX INFO: compiled from: DefaultBandwidthMeter.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements e, j0 {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final u6.v<Long> f10088n = (p0) u6.v.x(4800000L, 3100000L, 2100000L, 1500000L, 800000L);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final u6.v<Long> f10089o = (p0) u6.v.x(1500000L, 1000000L, 730000L, 440000L, 170000L);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final u6.v<Long> f10090p = (p0) u6.v.x(2200000L, 1400000L, 1100000L, 910000L, 620000L);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final u6.v<Long> f10091q = (p0) u6.v.x(3000000L, 1900000L, 1400000L, 1000000L, 660000L);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final u6.v<Long> f10092r = (p0) u6.v.x(6000000L, 4100000L, 3200000L, 1800000L, 1000000L);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final u6.v<Long> f10093s = (p0) u6.v.x(2800000L, 2400000L, 1600000L, 1100000L, 950000L);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static p f10094t;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u6.x<Integer, Long> f10095a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e.a.C0195a f10096b = new e.a.C0195a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final h0 f10097c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final m5.c f10098d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f10099e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10100f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f10101g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f10102h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f10103i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f10104j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f10105k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f10106l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f10107m;

    /* JADX INFO: compiled from: DefaultBandwidthMeter.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f10108a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Map<Integer, Long> f10109b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f10110c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public m5.a0 f10111d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f10112e;

        /* JADX WARN: Code duplicated, block: B:13:0x002e  */
        public b(Context context) {
            String strU;
            int[] iArr;
            TelephonyManager telephonyManager;
            this.f10108a = context == null ? null : context.getApplicationContext();
            int i10 = m5.g0.f10384a;
            if (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
                strU = androidx.activity.k.u(Locale.getDefault().getCountry());
            } else {
                String networkCountryIso = telephonyManager.getNetworkCountryIso();
                if (TextUtils.isEmpty(networkCountryIso)) {
                    strU = androidx.activity.k.u(Locale.getDefault().getCountry());
                } else {
                    strU = androidx.activity.k.u(networkCountryIso);
                }
            }
            u6.v<Long> vVar = p.f10088n;
            Objects.requireNonNull(strU);
            switch (strU) {
                case "AD":
                case "BM":
                case "BQ":
                case "GD":
                case "GL":
                case "KN":
                case "KY":
                case "LC":
                case "VC":
                    iArr = new int[]{1, 2, 0, 0, 2, 2};
                    break;
                case "AE":
                    iArr = new int[]{1, 4, 4, 4, 4, 0};
                    break;
                case "AF":
                case "GM":
                    iArr = new int[]{4, 3, 3, 4, 2, 2};
                    break;
                case "AG":
                    iArr = new int[]{2, 4, 1, 2, 2, 2};
                    break;
                case "AI":
                    iArr = new int[]{0, 2, 0, 3, 2, 2};
                    break;
                case "AL":
                case "XK":
                    iArr = new int[]{1, 1, 1, 1, 2, 2};
                    break;
                case "AM":
                    iArr = new int[]{2, 3, 2, 3, 2, 2};
                    break;
                case "AO":
                    iArr = new int[]{4, 4, 3, 2, 2, 2};
                    break;
                case "AQ":
                case "ER":
                case "SH":
                    iArr = new int[]{4, 2, 2, 2, 2, 2};
                    break;
                case "AR":
                case "KG":
                case "TN":
                case "UY":
                    iArr = new int[]{2, 1, 1, 1, 2, 2};
                    break;
                case "AS":
                    iArr = new int[]{2, 2, 3, 3, 2, 2};
                    break;
                case "AT":
                    iArr = new int[]{1, 0, 1, 1, 0, 0};
                    break;
                case "AU":
                    iArr = new int[]{0, 1, 1, 1, 2, 0};
                    break;
                case "AW":
                    iArr = new int[]{1, 3, 4, 4, 2, 2};
                    break;
                case "AX":
                case "LI":
                case "MS":
                case "PM":
                case "SM":
                    iArr = new int[]{0, 2, 2, 2, 2, 2};
                    break;
                case "AZ":
                case "GF":
                case "LY":
                case "PK":
                case "SO":
                case "TO":
                    iArr = new int[]{3, 2, 3, 3, 2, 2};
                    break;
                case "BA":
                    iArr = new int[]{1, 2, 1, 1, 2, 2};
                    break;
                case "BB":
                case "DM":
                case "FO":
                case "GI":
                    iArr = new int[]{0, 2, 0, 0, 2, 2};
                    break;
                case "BD":
                    iArr = new int[]{2, 1, 3, 3, 2, 2};
                    break;
                case "BE":
                    iArr = new int[]{0, 1, 4, 4, 3, 2};
                    break;
                case "BF":
                    iArr = new int[]{4, 3, 4, 3, 2, 2};
                    break;
                case "BG":
                case "MT":
                case "SK":
                    iArr = new int[]{0, 0, 0, 0, 1, 2};
                    break;
                case "BH":
                    iArr = new int[]{1, 2, 1, 3, 4, 2};
                    break;
                case "BI":
                case "HT":
                case "KM":
                case "MG":
                case "NE":
                case "SD":
                case "TD":
                case "VE":
                case "YE":
                    iArr = new int[]{4, 4, 4, 4, 2, 2};
                    break;
                case "BJ":
                    iArr = new int[]{4, 4, 3, 3, 2, 2};
                    break;
                case "BL":
                case "CX":
                case "VA":
                    iArr = new int[]{1, 2, 2, 2, 2, 2};
                    break;
                case "BN":
                case "CW":
                    iArr = new int[]{2, 2, 0, 0, 2, 2};
                    break;
                case "BO":
                    iArr = new int[]{1, 2, 3, 2, 2, 2};
                    break;
                case "BS":
                    iArr = new int[]{4, 4, 2, 2, 2, 2};
                    break;
                case "BT":
                    iArr = new int[]{3, 1, 3, 2, 2, 2};
                    break;
                case "BW":
                    iArr = new int[]{3, 2, 1, 0, 2, 2};
                    break;
                case "BY":
                    iArr = new int[]{0, 1, 2, 3, 2, 2};
                    break;
                case "BZ":
                    iArr = new int[]{2, 4, 2, 1, 2, 2};
                    break;
                case "CA":
                    iArr = new int[]{0, 2, 2, 2, 3, 2};
                    break;
                case "CD":
                    iArr = new int[]{4, 2, 3, 2, 2, 2};
                    break;
                case "CF":
                case "KI":
                    iArr = new int[]{4, 2, 4, 2, 2, 2};
                    break;
                case "CG":
                case "EG":
                case "GW":
                    iArr = new int[]{3, 4, 3, 3, 2, 2};
                    break;
                case "CH":
                    iArr = new int[]{0, 0, 0, 1, 0, 2};
                    break;
                case "CI":
                case "DZ":
                case "LR":
                    iArr = new int[]{3, 4, 4, 4, 2, 2};
                    break;
                case "CK":
                case "PF":
                    iArr = new int[]{2, 2, 2, 1, 2, 2};
                    break;
                case "CL":
                case "IL":
                    iArr = new int[]{1, 2, 2, 2, 3, 2};
                    break;
                case "CM":
                    iArr = new int[]{3, 3, 3, 3, 2, 2};
                    break;
                case "CN":
                    iArr = new int[]{2, 0, 1, 1, 3, 2};
                    break;
                case "CO":
                    iArr = new int[]{2, 3, 4, 3, 2, 2};
                    break;
                case "CR":
                    iArr = new int[]{2, 3, 4, 4, 2, 2};
                    break;
                case "CU":
                case "DJ":
                case "SY":
                case "TJ":
                case "TL":
                    iArr = new int[]{4, 3, 4, 4, 2, 2};
                    break;
                case "CV":
                    iArr = new int[]{2, 1, 0, 0, 2, 2};
                    break;
                case "CY":
                case "KW":
                    iArr = new int[]{1, 0, 0, 0, 0, 2};
                    break;
                case "CZ":
                case "NO":
                    iArr = new int[]{0, 0, 2, 0, 1, 2};
                    break;
                case "DE":
                    iArr = new int[]{0, 1, 2, 2, 2, 3};
                    break;
                case "DK":
                    iArr = new int[]{0, 0, 3, 2, 0, 2};
                    break;
                case "DO":
                    iArr = new int[]{3, 4, 4, 4, 4, 2};
                    break;
                case "EC":
                    iArr = new int[]{2, 3, 2, 1, 2, 2};
                    break;
                case "EE":
                case "IS":
                case "LV":
                case "PT":
                case "SE":
                case "TW":
                    iArr = new int[]{0, 0, 0, 0, 0, 2};
                    break;
                case "ES":
                case "IE":
                    iArr = new int[]{0, 1, 1, 1, 2, 2};
                    break;
                case "ET":
                    iArr = new int[]{4, 3, 3, 1, 2, 2};
                    break;
                case "FI":
                    iArr = new int[]{0, 0, 0, 3, 0, 2};
                    break;
                case "FJ":
                    iArr = new int[]{3, 1, 2, 2, 2, 2};
                    break;
                case "FK":
                case "KE":
                case "KP":
                    iArr = new int[]{3, 2, 2, 2, 2, 2};
                    break;
                case "FM":
                    iArr = new int[]{4, 2, 4, 1, 2, 2};
                    break;
                case "FR":
                    iArr = new int[]{1, 2, 3, 1, 0, 2};
                    break;
                case "GA":
                case "TG":
                    iArr = new int[]{3, 4, 1, 0, 2, 2};
                    break;
                case "GB":
                    iArr = new int[]{0, 0, 1, 1, 1, 1};
                    break;
                case "GE":
                    iArr = new int[]{1, 1, 1, 2, 2, 2};
                    break;
                case "GG":
                case "VI":
                    iArr = new int[]{0, 2, 0, 1, 2, 2};
                    break;
                case "GH":
                case "NA":
                case "VU":
                    iArr = new int[]{3, 3, 3, 2, 2, 2};
                    break;
                case "GN":
                    iArr = new int[]{4, 3, 4, 2, 2, 2};
                    break;
                case "GP":
                case "MQ":
                    iArr = new int[]{2, 1, 2, 3, 2, 2};
                    break;
                case "GQ":
                    iArr = new int[]{4, 2, 1, 4, 2, 2};
                    break;
                case "GR":
                case "HR":
                case "SI":
                    iArr = new int[]{1, 0, 0, 0, 1, 2};
                    break;
                case "GT":
                    iArr = new int[]{2, 3, 2, 2, 2, 2};
                    break;
                case "GU":
                case "PE":
                    iArr = new int[]{1, 2, 4, 4, 4, 2};
                    break;
                case "GY":
                    iArr = new int[]{3, 2, 2, 1, 2, 2};
                    break;
                case "HK":
                    iArr = new int[]{0, 1, 2, 3, 2, 0};
                    break;
                case "HU":
                    iArr = new int[]{0, 0, 0, 1, 3, 2};
                    break;
                case "ID":
                    iArr = new int[]{3, 1, 2, 2, 3, 2};
                    break;
                case "IM":
                case "UA":
                    iArr = new int[]{0, 2, 1, 1, 2, 2};
                    break;
                case "IN":
                    iArr = new int[]{1, 1, 3, 2, 3, 3};
                    break;
                case "IO":
                case "MH":
                case "TV":
                case "WF":
                    iArr = new int[]{4, 2, 2, 4, 2, 2};
                    break;
                case "IQ":
                    iArr = new int[]{3, 2, 2, 3, 2, 2};
                    break;
                case "IR":
                    iArr = new int[]{3, 0, 1, 1, 4, 1};
                    break;
                case "IT":
                    iArr = new int[]{0, 0, 0, 1, 1, 2};
                    break;
                case "JE":
                case "YT":
                    iArr = new int[]{4, 2, 2, 3, 2, 2};
                    break;
                case "JM":
                    iArr = new int[]{2, 4, 3, 2, 2, 2};
                    break;
                case "JO":
                    iArr = new int[]{2, 1, 1, 2, 2, 2};
                    break;
                case "JP":
                    iArr = new int[]{0, 1, 1, 2, 2, 4};
                    break;
                case "KH":
                    iArr = new int[]{2, 1, 4, 2, 2, 2};
                    break;
                case "KR":
                    iArr = new int[]{0, 1, 1, 3, 4, 4};
                    break;
                case "KZ":
                    iArr = new int[]{2, 1, 2, 2, 2, 2};
                    break;
                case "LA":
                    iArr = new int[]{1, 2, 1, 3, 2, 2};
                    break;
                case "LB":
                    iArr = new int[]{3, 3, 2, 4, 2, 2};
                    break;
                case "LK":
                    iArr = new int[]{3, 1, 3, 3, 4, 2};
                    break;
                case "LS":
                    iArr = new int[]{3, 3, 2, 2, 2, 2};
                    break;
                case "LT":
                    iArr = new int[]{0, 0, 0, 0, 2, 2};
                    break;
                case "LU":
                    iArr = new int[]{1, 0, 3, 2, 1, 4};
                    break;
                case "MA":
                    iArr = new int[]{3, 3, 1, 1, 2, 2};
                    break;
                case "MC":
                    iArr = new int[]{0, 2, 2, 0, 2, 2};
                    break;
                case "MD":
                case "RS":
                    iArr = new int[]{1, 0, 0, 0, 2, 2};
                    break;
                case "ME":
                    iArr = new int[]{2, 0, 0, 1, 2, 2};
                    break;
                case "MF":
                case "RE":
                    iArr = new int[]{1, 2, 1, 2, 2, 2};
                    break;
                case "MK":
                    iArr = new int[]{1, 0, 0, 1, 3, 2};
                    break;
                case "ML":
                case "PG":
                    iArr = new int[]{4, 3, 3, 2, 2, 2};
                    break;
                case "MM":
                    iArr = new int[]{2, 4, 2, 3, 2, 2};
                    break;
                case "MN":
                    iArr = new int[]{2, 0, 1, 2, 2, 2};
                    break;
                case "MO":
                case "MP":
                    iArr = new int[]{0, 2, 4, 4, 2, 2};
                    break;
                case "MR":
                case "ZW":
                    iArr = new int[]{4, 2, 4, 4, 2, 2};
                    break;
                case "MU":
                    iArr = new int[]{3, 1, 1, 2, 2, 2};
                    break;
                case "MV":
                    iArr = new int[]{3, 4, 1, 4, 2, 2};
                    break;
                case "MW":
                    iArr = new int[]{4, 2, 3, 3, 2, 2};
                    break;
                case "MX":
                    iArr = new int[]{2, 4, 3, 4, 2, 2};
                    break;
                case "MY":
                    iArr = new int[]{1, 0, 3, 1, 3, 2};
                    break;
                case "MZ":
                    iArr = new int[]{3, 1, 2, 1, 2, 2};
                    break;
                case "NC":
                    iArr = new int[]{3, 3, 4, 4, 2, 2};
                    break;
                case "NG":
                    iArr = new int[]{3, 4, 2, 1, 2, 2};
                    break;
                case "NI":
                case "PA":
                case "SV":
                    iArr = new int[]{2, 3, 3, 3, 2, 2};
                    break;
                case "NL":
                    iArr = new int[]{0, 2, 2, 3, 0, 3};
                    break;
                case "NP":
                    iArr = new int[]{2, 2, 4, 3, 2, 2};
                    break;
                case "NR":
                case "NU":
                    iArr = new int[]{4, 2, 2, 1, 2, 2};
                    break;
                case "NZ":
                case "PL":
                    iArr = new int[]{1, 1, 2, 2, 4, 2};
                    break;
                case "OM":
                    iArr = new int[]{2, 3, 1, 3, 4, 2};
                    break;
                case "PH":
                    iArr = new int[]{2, 1, 3, 3, 3, 0};
                    break;
                case "PR":
                    iArr = new int[]{2, 0, 2, 1, 2, 1};
                    break;
                case "PS":
                    iArr = new int[]{3, 4, 1, 2, 2, 2};
                    break;
                case "PW":
                    iArr = new int[]{2, 2, 4, 1, 2, 2};
                    break;
                case "QA":
                    iArr = new int[]{2, 4, 4, 4, 4, 2};
                    break;
                case "RO":
                    iArr = new int[]{0, 0, 1, 2, 1, 2};
                    break;
                case "RU":
                    iArr = new int[]{1, 0, 0, 0, 4, 3};
                    break;
                case "RW":
                    iArr = new int[]{3, 4, 2, 0, 2, 2};
                    break;
                case "SA":
                    iArr = new int[]{3, 1, 1, 1, 2, 2};
                    break;
                case "SB":
                    iArr = new int[]{4, 2, 4, 3, 2, 2};
                    break;
                case "SC":
                case "TM":
                    iArr = new int[]{4, 2, 1, 1, 2, 2};
                    break;
                case "SG":
                    iArr = new int[]{1, 1, 2, 2, 2, 1};
                    break;
                case "SL":
                case "UG":
                    iArr = new int[]{3, 3, 4, 3, 2, 2};
                    break;
                case "SN":
                    iArr = new int[]{4, 4, 4, 3, 2, 2};
                    break;
                case "SR":
                    iArr = new int[]{2, 4, 3, 0, 2, 2};
                    break;
                case "SS":
                    iArr = new int[]{4, 3, 2, 3, 2, 2};
                    break;
                case "ST":
                    iArr = new int[]{2, 2, 1, 2, 2, 2};
                    break;
                case "SX":
                case "TC":
                    iArr = new int[]{1, 2, 1, 0, 2, 2};
                    break;
                case "SZ":
                    iArr = new int[]{3, 3, 3, 4, 2, 2};
                    break;
                case "TH":
                    iArr = new int[]{0, 2, 2, 3, 3, 4};
                    break;
                case "TK":
                    iArr = new int[]{2, 2, 2, 4, 2, 2};
                    break;
                case "TR":
                    iArr = new int[]{1, 1, 0, 0, 2, 2};
                    break;
                case "TT":
                    iArr = new int[]{1, 4, 1, 3, 2, 2};
                    break;
                case "TZ":
                    iArr = new int[]{3, 4, 3, 2, 2, 2};
                    break;
                case "US":
                    iArr = new int[]{1, 0, 2, 2, 3, 1};
                    break;
                case "UZ":
                    iArr = new int[]{2, 2, 3, 4, 2, 2};
                    break;
                case "VG":
                    iArr = new int[]{2, 2, 1, 1, 2, 2};
                    break;
                case "VN":
                    iArr = new int[]{0, 3, 3, 4, 2, 2};
                    break;
                case "WS":
                    iArr = new int[]{3, 1, 3, 1, 2, 2};
                    break;
                case "ZA":
                    iArr = new int[]{3, 2, 2, 1, 1, 2};
                    break;
                case "ZM":
                    iArr = new int[]{3, 3, 4, 2, 2, 2};
                    break;
                default:
                    iArr = new int[]{2, 2, 2, 2, 2, 2};
                    break;
            }
            HashMap map = new HashMap(8);
            map.put(0, 1000000L);
            u6.v<Long> vVar2 = p.f10088n;
            map.put(2, vVar2.get(iArr[0]));
            map.put(3, p.f10089o.get(iArr[1]));
            map.put(4, p.f10090p.get(iArr[2]));
            map.put(5, p.f10091q.get(iArr[3]));
            map.put(10, p.f10092r.get(iArr[4]));
            map.put(9, p.f10093s.get(iArr[5]));
            map.put(7, vVar2.get(iArr[0]));
            this.f10109b = map;
            this.f10110c = ActivityTrace.MAX_TRACES;
            this.f10111d = m5.c.f10364a;
            this.f10112e = true;
        }
    }

    public p(Context context, Map map, int i10, m5.c cVar, boolean z10, a aVar) {
        this.f10095a = u6.x.a(map);
        this.f10097c = new h0(i10);
        this.f10098d = cVar;
        this.f10099e = z10;
        if (context == null) {
            this.f10103i = 0;
            this.f10106l = j(0);
            return;
        }
        m5.u uVarB = m5.u.b(context);
        int iC = uVarB.c();
        this.f10103i = iC;
        this.f10106l = j(iC);
        m5.u.b bVar = new m5.u.b() { // from class: l5.o
            @Override // m5.u.b
            public final void a(int i11) {
                p pVar = this.f10087a;
                synchronized (pVar) {
                    int i12 = pVar.f10103i;
                    if (i12 == 0 || pVar.f10099e) {
                        if (i12 == i11) {
                            return;
                        }
                        pVar.f10103i = i11;
                        if (i11 != 1 && i11 != 0 && i11 != 8) {
                            pVar.f10106l = pVar.j(i11);
                            long jD = pVar.f10098d.d();
                            pVar.l(pVar.f10100f > 0 ? (int) (jD - pVar.f10101g) : 0, pVar.f10102h, pVar.f10106l);
                            pVar.f10101g = jD;
                            pVar.f10102h = 0L;
                            pVar.f10105k = 0L;
                            pVar.f10104j = 0L;
                            h0 h0Var = pVar.f10097c;
                            h0Var.f10038b.clear();
                            h0Var.f10040d = -1;
                            h0Var.f10041e = 0;
                            h0Var.f10042f = 0;
                        }
                    }
                }
            }
        };
        for (WeakReference<m5.u.b> weakReference : uVarB.f10466b) {
            if (weakReference.get() == null) {
                uVarB.f10466b.remove(weakReference);
            }
        }
        uVarB.f10466b.add(new WeakReference<>(bVar));
        uVarB.f10465a.post(new androidx.lifecycle.c(uVarB, bVar, 3));
    }

    public static boolean k(m mVar, boolean z10) {
        if (z10) {
            if (!((mVar.f10079i & 8) == 8)) {
                return true;
            }
        }
        return false;
    }

    @Override // l5.e
    public final j0 a() {
        return this;
    }

    @Override // l5.e
    public final void b(Handler handler, e.a aVar) {
        Objects.requireNonNull(aVar);
        e.a.C0195a c0195a = this.f10096b;
        Objects.requireNonNull(c0195a);
        c0195a.a(aVar);
        c0195a.f10008a.add(new e.a.C0195a.C0196a(handler, aVar));
    }

    @Override // l5.e
    public final void d(e.a aVar) {
        this.f10096b.a(aVar);
    }

    @Override // l5.e
    public final synchronized long e() {
        return this.f10106l;
    }

    @Override // l5.j0
    public final synchronized void f(m mVar, boolean z10) {
        if (k(mVar, z10)) {
            if (this.f10100f == 0) {
                this.f10101g = this.f10098d.d();
            }
            this.f10100f++;
        }
    }

    @Override // l5.j0
    public final void g() {
    }

    @Override // l5.j0
    public final synchronized void h(m mVar, boolean z10) {
        if (k(mVar, z10)) {
            m5.a.e(this.f10100f > 0);
            long jD = this.f10098d.d();
            int i10 = (int) (jD - this.f10101g);
            this.f10104j += (long) i10;
            long j10 = this.f10105k;
            long j11 = this.f10102h;
            this.f10105k = j10 + j11;
            if (i10 > 0) {
                this.f10097c.a((int) Math.sqrt(j11), (j11 * 8000.0f) / i10);
                if (this.f10104j >= 2000 || this.f10105k >= 524288) {
                    this.f10106l = (long) this.f10097c.b();
                }
                l(i10, this.f10102h, this.f10106l);
                this.f10101g = jD;
                this.f10102h = 0L;
            }
            this.f10100f--;
        }
    }

    @Override // l5.j0
    public final synchronized void i(m mVar, boolean z10, int i10) {
        if (k(mVar, z10)) {
            this.f10102h += (long) i10;
        }
    }

    public final long j(int i10) {
        Long l10 = this.f10095a.get(Integer.valueOf(i10));
        if (l10 == null) {
            l10 = this.f10095a.get(0);
        }
        if (l10 == null) {
            l10 = 1000000L;
        }
        return l10.longValue();
    }

    public final void l(final int i10, final long j10, final long j11) {
        if (i10 == 0 && j10 == 0 && j11 == this.f10107m) {
            return;
        }
        this.f10107m = j11;
        for (final e.a.C0195a.C0196a c0196a : this.f10096b.f10008a) {
            if (!c0196a.f10011c) {
                c0196a.f10009a.post(new Runnable() { // from class: l5.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        e.a.C0195a.C0196a c0196a2 = c0196a;
                        c0196a2.f10010b.X(i10, j10, j11);
                    }
                });
            }
        }
    }
}
