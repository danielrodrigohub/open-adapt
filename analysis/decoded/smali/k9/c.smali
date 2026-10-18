.class public final Lk9/c;
.super Ljava/lang/Object;
.source "RateDialogPreferences.kt"

# interfaces
.implements Lk9/b;


# static fields
.field public static final a:Lk9/c;

.field public static final b:Landroid/content/SharedPreferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lk9/c;

    invoke-direct {v0}, Lk9/c;-><init>()V

    sput-object v0, Lk9/c;->a:Lk9/c;

    sget-object v0, Lcom/nike/adapt/BigfootApplication;->p:Lcom/nike/adapt/BigfootApplication$e;

    invoke-virtual {v0}, Lcom/nike/adapt/BigfootApplication$e;->a()Lcom/nike/adapt/BigfootApplication;

    move-result-object v0

    const-string v1, "RATE_DIALOG_SETTINGS_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "BigfootApplication.APPLI\u2026EY, Context.MODE_PRIVATE)"

    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lk9/c;->b:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lk9/c;->b:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "WAITING_FOR_NEW_SESSION_BEFORE_RATE_DIALOG"

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final b()I
    .locals 3

    sget-object v0, Lk9/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "DONT_SHOW_RATE_DIALOG_VERSION"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 3

    .line 1
    sget-object v0, Lk9/c;->b:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "HAS_RATED_APP_VERSION"

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final d()I
    .locals 3

    sget-object v0, Lk9/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "VISITS_BEFORE_SHOW_RATE_DIALOG"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 3

    sget-object v0, Lk9/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "WAITING_FOR_NEW_SESSION_BEFORE_RATE_DIALOG"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f(I)V
    .locals 2

    .line 1
    sget-object v0, Lk9/c;->b:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "VISITS_BEFORE_SHOW_RATE_DIALOG"

    .line 4
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final g()I
    .locals 3

    sget-object v0, Lk9/c;->b:Landroid/content/SharedPreferences;

    const-string v1, "HAS_RATED_APP_VERSION"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final h()V
    .locals 3

    .line 1
    sget-object v0, Lk9/c;->b:Landroid/content/SharedPreferences;

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "editor"

    .line 3
    invoke-static {v0, v1}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "DONT_SHOW_RATE_DIALOG_VERSION"

    const/4 v2, 0x1

    .line 4
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
