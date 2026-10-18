.class public final Lh8/c;
.super Ljava/lang/Object;
.source "AdaptPreferenceHelper.kt"

# interfaces
.implements Lh8/a;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final b:Lh8/c;

.field public static final c:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh8/c;

    invoke-direct {v0}, Lh8/c;-><init>()V

    sput-object v0, Lh8/c;->b:Lh8/c;

    sget-object v0, Lh8/c$b;->h:Lh8/c$b;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lh8/c;->c:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 3

    const-string v0, "editor"

    const-string v1, "PREF_HAS_SEEN_SPLASH_SCREEN"

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v0, v1, v2}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final B(Lv7/d;)V
    .locals 2

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Le7/h;

    invoke-direct {v1}, Le7/h;-><init>()V

    invoke-static {v1, p1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Le7/h;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PREF_FW_UPGRADE_RECORD"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final C(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PREF_CAN_SHOW_BATTERY_NOTIFICATION_CHARGED"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final D()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_HAS_SEEN_VOICE_SETTINGS_PROMPT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final E()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_HAS_SEEN_LIGHT_PACKS_ACTIVATED_BOTTOM_SHEET"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final F(Lcom/nike/adapt/network/assets/model/Manifest;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Le7/h;

    invoke-direct {v1}, Le7/h;-><init>()V

    invoke-static {v1, p1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Le7/h;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "pref_last_cached_manifest"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final G()I
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PARAM_IS_DATA_OPT_IN_SESSIONS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final H()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PREF_APP_VERSION"

    const-string v2, "1.29.3"

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final I(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PREF_CONNECT_ATTEMPT_AFTER_FW_UPGRADE"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final J()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_CAN_SHOW_APP_DECOMMISSION_DIALOG"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final K()Lcom/nike/adapt/network/assets/model/Manifest;
    .locals 6

    .line 1
    new-instance v0, Le7/h;

    invoke-direct {v0}, Le7/h;-><init>()V

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v2, Lp7/a;->a:Lp7/a;

    .line 2
    sget-object v2, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v2}, Lcom/nike/adapt/BigfootApplication$e;->b()Lcom/nike/adapt/BigfootApplication;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v4, "default_manifest.json"

    invoke-virtual {v2, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const-string v4, "context.assets.open(\"default_manifest.json\")"

    invoke-static {v2, v4}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lyd/a;->b:Ljava/nio/charset/Charset;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v2, 0x2000

    instance-of v4, v5, Ljava/io/BufferedReader;

    if-eqz v4, :cond_0

    check-cast v5, Ljava/io/BufferedReader;

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v4

    :goto_0
    :try_start_1
    invoke-static {v5}, Landroidx/lifecycle/o;->E(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v5, v3}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-static {v5, v2}, Ld3/e;->d(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    sget-object v2, Lo7/x;->a:Lo7/x;

    const-string v4, "Unable to fetch the default manifest"

    invoke-virtual {v2, v4}, Lo7/x;->a(Ljava/lang/String;)V

    :goto_1
    const-string v2, "pref_last_cached_manifest"

    .line 6
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/nike/adapt/network/assets/model/Manifest;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Gson().fromJson(sharedPr\u2026)), Manifest::class.java)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/nike/adapt/network/assets/model/Manifest;

    return-object v0
.end method

.method public final L(Lcom/nike/adapt/ui/settings/AppIconsActivity$a;)V
    .locals 2

    const-string v0, "icon"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PREF_APP_ICON_SELECTION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final M()J
    .locals 4

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_FIRMWARE_LFT_PROGRESS_ERROR_TIME"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final N()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_HAS_SEEN_LIGHT_PACKS_TUTORIAL2"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final O()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lv7/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le7/h;

    invoke-direct {v0}, Le7/h;-><init>()V

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PREF_SHOE_DATA_LIST"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lh8/c$a;

    invoke-direct {v2}, Lh8/c$a;-><init>()V

    .line 2
    iget-object v2, v2, Ll7/a;->b:Ljava/lang/reflect/Type;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public final P()I
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GOOGLE_VOICE_LACING_NOTIFICATION_COUNT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final Q()Lcom/nike/adapt/ui/settings/AppIconsActivity$a;
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_APP_ICON_SELECTION"

    const-string v2, "Adapt"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-static {v2}, Lcom/nike/adapt/ui/settings/AppIconsActivity$a;->valueOf(Ljava/lang/String;)Lcom/nike/adapt/ui/settings/AppIconsActivity$a;

    move-result-object v0

    return-object v0
.end method

.method public final R()Lcom/nike/adapt/presenter/profile/AdaptUser;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_BIGFOOT_USER"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Le7/h;

    invoke-direct {v1}, Le7/h;-><init>()V

    const-class v3, Lcom/nike/adapt/presenter/profile/AdaptUser;

    invoke-static {v1, v0, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/presenter/profile/AdaptUser;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/nike/adapt/presenter/profile/AdaptUser;->getNuid()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    move-object v2, v0

    :cond_1
    return-object v2
.end method

.method public final S()Lcom/nike/adapt/adk/model/AdaptShoeColor;
    .locals 7

    .line 1
    new-instance v0, Le7/h;

    invoke-direct {v0}, Le7/h;-><init>()V

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PREF_SHOE_COLOR"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    sget-object v3, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->HERO_BLUE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    :cond_0
    return-object v0
.end method

.method public final T()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_IS_DATA_OPT_IN_ENABLED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final U()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_ANIMATION_ERROR_ALREADY_DISPLAYED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final V(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PARAM_IS_DATA_OPT_IN_SESSIONS"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final W()Lv7/d;
    .locals 4

    new-instance v0, Le7/h;

    invoke-direct {v0}, Le7/h;-><init>()V

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PREF_FW_UPGRADE_RECORD"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lv7/d;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv7/d;

    return-object v0
.end method

.method public final X()V
    .locals 3

    const-string v0, "editor"

    const-string v1, "PREF_HAS_SEEN_GESTURES_INTRO"

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v0, v1, v2}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final Y()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_FIRMWARE_UPDATE_RETRY_AFTER_FAILURE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final Z()V
    .locals 3

    const-string v0, "editor"

    const-string v1, "PREF_HAS_SEEN_LIGHT_PACKS_FIRMWARE_UPDATE_BOTTOM_SHEET"

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v0, v1, v2}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lv7/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Le7/h;

    invoke-direct {v1}, Le7/h;-><init>()V

    invoke-static {v1, p1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Le7/h;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PREF_SHOE_DATA_LIST"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final a0()V
    .locals 3

    const-string v0, "editor"

    const-string v1, "PREF_HAS_SEEN_LIGHT_PACKS_TUTORIAL1"

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v0, v1, v2}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b()V
    .locals 3

    const-string v0, "editor"

    const-string v1, "PREF_HAS_SEEN_LIGHT_PACKS_TUTORIAL2"

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v0, v1, v2}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V
    .locals 2

    const-string v0, "adaptShoeColor"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Le7/h;

    invoke-direct {v1}, Le7/h;-><init>()V

    invoke-static {v1, p1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Le7/h;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PREF_SHOE_COLOR"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final c()Lcom/nike/adapt/adk/model/AdaptShoeColor;
    .locals 7

    .line 1
    new-instance v0, Le7/h;

    invoke-direct {v0}, Le7/h;-><init>()V

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PREF_LAST_NON_OFF_SHOE_COLOR"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Le7/h;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/nike/adapt/adk/model/AdaptShoeColor;

    sget-object v3, Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;->HERO_BLUE:Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, v3

    invoke-direct/range {v1 .. v6}, Lcom/nike/adapt/adk/model/AdaptShoeColor;-><init>(Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/AdaptMarshaller$AdaptPreset;Lcom/nike/adapt/adk/model/AdaptDeviceLEDIntensityADK;ILrd/h;)V

    :cond_0
    return-object v0
.end method

.method public final c0(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "last_known_pulsing_duration"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PREF_GOOGLE_VOICE_PROMPT"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final d0()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PARAM_MODES_SAVED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_HAS_SEEN_LIGHT_PACKS_FIRMWARE_UPDATE_BOTTOM_SHEET"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final e0()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_HAS_SEEN_GESTURES_INTRO"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_CONNECT_ATTEMPT_AFTER_FW_UPGRADE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f0()V
    .locals 3

    const-string v0, "editor"

    const-string v1, "PREF_CAN_SHOW_APP_DECOMMISSION_DIALOG"

    const/4 v2, 0x0

    .line 1
    invoke-static {p0, v0, v1, v2}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final g(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PREF_CAN_SHOW_BATTERY_NOTIFICATION_LOW"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final g0(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PREF_CAN_SHOW_BATTERY_NOTIFICATION_CRITICAL"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final getShoeType()Ls9/r;
    .locals 4

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "PREF_RIGHT_SHOE_TYPE"

    const-string v3, "ADAPT_BB"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v3

    :cond_0
    const-string v2, "PREF_LEFT_SHOE_TYPE"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-static {v3}, Ls9/r;->valueOf(Ljava/lang/String;)Ls9/r;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GOOGLE_VOICE_LACING_NOTIFICATION"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final h0(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PREF_FIRMWARE_UPDATE_RETRY_AFTER_FAILURE"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final i(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PREF_SHOULD_SHOW_JORDAN_APP_ICON_BADGE"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final i0()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_SHOULD_SHOW_JORDAN_APP_ICON_BADGE"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_known_pulsing_duration"

    const/16 v2, -0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final j0(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PREF_IS_DATA_OPT_IN_STATE"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final k()V
    .locals 3

    const-string v0, "editor"

    const-string v1, "PREF_HAS_SEEN_LIGHT_PACKS_ACTIVATED_BOTTOM_SHEET"

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v0, v1, v2}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final k0(Lcom/nike/adapt/adk/model/AdaptShoeColor;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Le7/h;

    invoke-direct {v1}, Le7/h;-><init>()V

    invoke-static {v1, p1}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Le7/h;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "PREF_LAST_NON_OFF_SHOE_COLOR"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final l()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_HAS_SEEN_SPLASH_SCREEN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final l0()Lv7/c;
    .locals 6

    .line 1
    sget-object v0, Lv7/c;->a:Lv7/c$b;

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lv7/c$e;->c:Lv7/c$e;

    .line 2
    sget-object v1, Lv7/c$e;->d:Ljava/lang/String;

    const-string v2, "PREF_DEFAULT_EFFECT"

    .line 3
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lv7/c;->b:Lfd/d;

    .line 5
    invoke-interface {v1}, Lfd/d;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lv7/c;

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 7
    invoke-virtual {v4}, Lv7/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    sget-object v4, Lv7/c$d;->c:Lv7/c$d;

    :cond_2
    return-object v4
.end method

.method public final m()V
    .locals 3

    const-string v0, "editor"

    const-string v1, "PREF_HAS_SEEN_VOICE_SETTINGS_PROMPT"

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v0, v1, v2}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final m0()Landroid/content/SharedPreferences;
    .locals 2

    sget-object v0, Lh8/c;->c:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-sharedPreferences>(...)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final n(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PREF_FIRMWARE_LFT_PROGRESS_ERROR_TIME"

    .line 4
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public final n0(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PREF_ANIMATION_ERROR_ALREADY_DISPLAYED"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final o(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PREF_GOOGLE_VOICE_LACING_NOTIFICATION_COUNT"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final o0(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PREF_IS_BATTERY_REMINDERS_ENABLED"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final p()I
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PARAM_LFT_PROGRESS"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final p0(Lv7/c;)V
    .locals 2

    const-string v0, "effectType"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lv7/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PREF_DEFAULT_EFFECT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final q(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "PARAM_LFT_PROGRESS"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final q0(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PREF_USER_LOGGED_IN"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final r()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_HAS_SEEN_JORDAN_APP_ICON"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final s(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PARAM_MODES_SAVED"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final setShoeType(Ls9/r;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, "PREF_LEFT_SHOE_TYPE"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string p1, "PREF_RIGHT_SHOE_TYPE"

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final t()V
    .locals 3

    const-string v0, "editor"

    const-string v1, "PREF_HAS_SEEN_JORDAN_APP_ICON"

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v0, v1, v2}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final u()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_HAS_SEEN_LIGHT_PACKS_TUTORIAL1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final v()I
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_GOOGLE_VOICE_PROMPT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final w(Z)V
    .locals 2

    const-string v0, "editor"

    const-string v1, "PREF_IS_DATA_OPT_IN_ENABLED"

    .line 1
    invoke-static {p0, v0, v1, p1}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final x()V
    .locals 3

    const-string v0, "editor"

    const-string v1, "PREF_GOOGLE_VOICE_LACING_NOTIFICATION"

    const/4 v2, 0x1

    .line 1
    invoke-static {p0, v0, v1, v2}, Lca/a;->f(Lh8/c;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final y()I
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_IS_DATA_OPT_IN_STATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final z()Z
    .locals 3

    invoke-virtual {p0}, Lh8/c;->m0()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PREF_IS_MULTI_PAIR"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
