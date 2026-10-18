package p7;

import androidx.appcompat.widget.e0;
import androidx.lifecycle.o;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.network.assets.model.AssetFile;
import com.nike.adapt.network.assets.model.BackgroundImageModel;
import com.nike.adapt.network.assets.model.Colorway;
import com.nike.adapt.network.assets.model.ColorwayV1;
import com.nike.adapt.network.assets.model.Configuration;
import com.nike.adapt.network.assets.model.GradientImages;
import com.nike.adapt.network.assets.model.Manifest;
import com.nike.adapt.network.assets.model.Settings;
import fd.d;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.TimeoutKt;
import ld.e;
import ld.i;
import p4.h;
import q.g;
import qd.p;
import s9.r;

/* JADX INFO: compiled from: AssetsRequester.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f13271a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d f13272b = o.w(3, C0230a.f13274h);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f13273c = 4;

    /* JADX INFO: renamed from: p7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AssetsRequester.kt */
    public static final class C0230a extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0230a f13274h = new C0230a();

        public C0230a() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: AssetsRequester.kt */
    @e(c = "com.nike.adapt.assetservice.AssetsRequester", f = "AssetsRequester.kt", l = {33}, m = "fetchManifestJsonAndPreloadAsset")
    public static final class b extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public a f13275h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f13276i;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f13278k;

        public b(jd.d<? super b> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f13276i = obj;
            this.f13278k |= Integer.MIN_VALUE;
            return a.this.b(this);
        }
    }

    /* JADX INFO: compiled from: AssetsRequester.kt */
    @e(c = "com.nike.adapt.assetservice.AssetsRequester$fetchManifestJsonAndPreloadAsset$2", f = "AssetsRequester.kt", l = {34}, m = "invokeSuspend")
    public static final class c extends i implements p<CoroutineScope, jd.d<? super Manifest>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f13279h;

        /* JADX INFO: renamed from: p7.a$c$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: AssetsRequester.kt */
        @e(c = "com.nike.adapt.assetservice.AssetsRequester$fetchManifestJsonAndPreloadAsset$2$1", f = "AssetsRequester.kt", l = {35}, m = "invokeSuspend")
        public static final class C0231a extends i implements p<CoroutineScope, jd.d<? super Manifest>, Object> {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public int f13280h;

            public C0231a(jd.d<? super C0231a> dVar) {
                super(2, dVar);
            }

            @Override // ld.a
            public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
                return new C0231a(dVar);
            }

            @Override // qd.p
            public final Object invoke(CoroutineScope coroutineScope, jd.d<? super Manifest> dVar) {
                return new C0231a(dVar).invokeSuspend(fd.o.f7408a);
            }

            /* JADX WARN: Code duplicated, block: B:21:0x0054  */
            @Override // ld.a
            public final Object invokeSuspend(Object obj) throws Throwable {
                Configuration configuration;
                Settings settings;
                ColorwayV1 colorwayV1;
                GradientImages gradientImages;
                kd.a aVar = kd.a.COROUTINE_SUSPENDED;
                int i10 = this.f13280h;
                boolean z10 = true;
                if (i10 == 0) {
                    d3.e.p(obj);
                    m8.i iVar = m8.i.f10830a;
                    this.f13280h = 1;
                    obj = ((x7.a) m8.i.f10831b.getValue()).a("1.29.3", this);
                    if (obj == aVar) {
                        return aVar;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
                Manifest manifest = (Manifest) obj;
                if (manifest.getConfiguration() == null) {
                    InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                    a aVar2 = a.f13271a;
                    inMemoryCache.setManifest(a.a().K());
                } else {
                    List<AssetFile> assetFiles = manifest.getAssetFiles();
                    if (assetFiles != null && !assetFiles.isEmpty()) {
                        z10 = false;
                    }
                    if (z10) {
                        InMemoryCache inMemoryCache2 = InMemoryCache.INSTANCE;
                        a aVar3 = a.f13271a;
                        inMemoryCache2.setManifest(a.a().K());
                    } else {
                        InMemoryCache.INSTANCE.setManifest(manifest);
                        a aVar4 = a.f13271a;
                        a.a().F(manifest);
                    }
                }
                a aVar5 = a.f13271a;
                Manifest manifest2 = InMemoryCache.INSTANCE.getManifest();
                if (manifest2 != null && (configuration = manifest2.getConfiguration()) != null && (settings = configuration.getSettings()) != null && (colorwayV1 = settings.getColorwayV1()) != null) {
                    String assetBaseUrl = colorwayV1.getAssetBaseUrl();
                    for (Colorway colorway : colorwayV1.getColorways()) {
                        aVar5.d(assetBaseUrl, colorway.getAssetsAngled(), colorway.getColorwayVersion());
                        aVar5.d(assetBaseUrl, colorway.getAssetsProfile(), colorway.getColorwayVersion());
                    }
                    List<BackgroundImageModel> backgroundImageModel = colorwayV1.getBackgroundImageModel();
                    s9.p pVar = s9.p.f15222a;
                    HashMap map = new HashMap();
                    map.put("001", r.ADAPT_BB);
                    map.put("002", r.ADAPT_NSW);
                    map.put("005", r.ADAPT_BB2);
                    map.put("004", r.ADAPT_AUTOMAX);
                    map.put("006", r.JORDAN);
                    map.put("007", r.JORDAN_2);
                    Set setKeySet = map.keySet();
                    h.i(setKeySet, "ShoeSelectionUtil.getShoeIdToStyleCodeMap().keys");
                    for (BackgroundImageModel backgroundImageModel2 : backgroundImageModel) {
                        if (setKeySet.contains(backgroundImageModel2.getShoe_identifier()) && (gradientImages = backgroundImageModel2.getGradientImages()) != null) {
                            a aVar6 = a.f13271a;
                            aVar6.d(assetBaseUrl, gradientImages.getGreenspark_white(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getRacerblue_electricgreen(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getRedorbit_optiyellow(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getGreenspark(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getRacerblue_optiyellow(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getTotalorange(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getAuroragreen(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getHeroblue(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getPinkblast(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getGreenspark_optiyellow(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getHeroblue_pinkblast(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getElectricgreen(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getRacerblue(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getOptiyellow(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getVividpurple_optiyellow(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getRedorbit_white(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getVividpurple_white(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getRedorbit_racerblue(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getWhite(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getVividpurple(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getLightsoff(), backgroundImageModel2.getModel_version());
                            aVar6.d(assetBaseUrl, gradientImages.getVividpurple_auroragreen(), backgroundImageModel2.getModel_version());
                        }
                    }
                }
                a aVar7 = a.f13271a;
                return a.a().K();
            }
        }

        public c(jd.d<? super c> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
            return new c(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super Manifest> dVar) {
            return new c(dVar).invokeSuspend(fd.o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f13279h;
            if (i10 == 0) {
                d3.e.p(obj);
                CoroutineDispatcher io = Dispatchers.getIO();
                C0231a c0231a = new C0231a(null);
                this.f13279h = 1;
                obj = BuildersKt.withContext(io, c0231a, this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return obj;
        }
    }

    public static final h8.a a() {
        return (h8.a) f13272b.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(jd.d<? super Manifest> dVar) throws Throwable {
        b bVar;
        int i10;
        a aVar;
        if (dVar instanceof b) {
            bVar = (b) dVar;
            int i11 = bVar.f13278k;
            if ((i11 & Integer.MIN_VALUE) != 0) {
                bVar.f13278k = i11 - Integer.MIN_VALUE;
            } else {
                bVar = new b(dVar);
            }
        } else {
            bVar = new b(dVar);
        }
        Object objWithTimeout = bVar.f13276i;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        int i12 = bVar.f13278k;
        if (i12 == 0) {
            d3.e.p(objWithTimeout);
            float f10 = BigfootApplication.f5638p.a().getResources().getDisplayMetrics().density;
            if (f10 <= 1.0f) {
                i10 = 1;
            } else if (f10 <= 1.5d) {
                i10 = 2;
            } else if (f10 <= 2.0f) {
                i10 = 3;
            } else {
                i10 = f10 <= 3.0f ? 4 : 5;
            }
            f13273c = i10;
            try {
                c cVar = new c(null);
                bVar.f13275h = this;
                bVar.f13278k = 1;
                objWithTimeout = TimeoutKt.withTimeout(3000L, cVar, bVar);
                if (objWithTimeout == aVar2) {
                    return aVar2;
                }
                aVar = this;
            } catch (Throwable unused) {
                aVar = this;
                Objects.requireNonNull(aVar);
                return ((h8.a) f13272b.getValue()).K();
            }
        } else {
            if (i12 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            aVar = bVar.f13275h;
            try {
                d3.e.p(objWithTimeout);
            } catch (Throwable unused2) {
                Objects.requireNonNull(aVar);
                return ((h8.a) f13272b.getValue()).K();
            }
        }
        return (Manifest) objWithTimeout;
    }

    public final String c(Map<String, String> map) {
        String str;
        String str2;
        h.j(map, "assetUrlMap");
        String str3 = map.get(e0.b(f13273c));
        if (str3 != null) {
            return str3;
        }
        int iA = g.a(f13273c) + 1;
        if (iA < g.b(5).length && (str2 = map.get(e0.b(g.b(5)[iA]))) != null) {
            return str2;
        }
        int iA2 = g.a(f13273c) - 1;
        if (iA2 < 0 || (str = map.get(e0.b(g.b(5)[iA2]))) == null) {
            return null;
        }
        return str;
    }

    public final void d(String str, Map<String, String> map, int i10) {
        String strC = c(map);
        if (strC != null) {
            t7.b.f15557a.a().a(Integer.valueOf(i10), androidx.recyclerview.widget.d.c(str, strC));
        }
    }
}
