.class public final Ldc/a;
.super Ljava/lang/Object;
.source "AccountManagerCredentialStore.kt"

# interfaces
.implements Ldc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc/a$a;
    }
.end annotation


# static fields
.field public static final Companion:Ldc/a$a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Led/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldc/a$a;

    invoke-direct {v0}, Ldc/a$a;-><init>()V

    sput-object v0, Ldc/a;->Companion:Ldc/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Led/e;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telemetryProvider"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldc/a;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Ldc/a;->b:Led/e;

    return-void
.end method


# virtual methods
.method public final a(Ldc/c;Lob/c;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/c;",
            "Lob/c;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "com.nike.authcomponent.v1"

    const-string v1, "<this>"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v4, p0, Ldc/a;->b:Led/e;

    invoke-static {p2, v4}, Lob/d;->a(Lob/c;Led/e;)Lxb/a;

    move-result-object v4

    .line 2
    invoke-virtual {v4}, Lxb/a;->a()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lxb/a;->c()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-interface {p1}, Ldc/c;->getKey()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "Nike"

    .line 3
    :cond_0
    :try_start_1
    iget-object p1, p0, Ldc/a;->a:Landroid/content/Context;

    const-string v4, "account"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Landroid/accounts/AccountManager;

    .line 4
    invoke-virtual {p1, v0}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    const-string v6, "accountManager.getAccountsByType(ACCOUNT_TYPE)"

    invoke-static {v4, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v6, p0, Ldc/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 6
    array-length v7, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v8, v2

    :goto_0
    const-string v9, "packageName"

    if-ge v8, v7, :cond_2

    :try_start_2
    aget-object v10, v4, v8

    const-string v11, "it"

    invoke-static {v10, v11}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v10, v6}, Ldc/a;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    .line 7
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 8
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move-object v10, v3

    :goto_1
    if-nez v10, :cond_3

    .line 9
    new-instance v10, Landroid/accounts/Account;

    invoke-direct {v10, v5, v0}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v10, v3, v3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 11
    :cond_3
    invoke-interface {p2}, Lob/b;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v10, v6, v0}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {v6, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ldc/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lob/c;->getIdTokenString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v10, v0, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, v6}, Ldc/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lob/b;->getUpmID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v10, v0, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v6}, Ldc/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lob/b;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v10, v0, v4}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v6}, Ldc/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lob/b;->getExpirationDate()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v10, v0, p2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1, v10}, Ldc/a;->e(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/util/List;

    move-result-object p2

    .line 17
    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    :cond_4
    invoke-virtual {p0, p1, v10, p2}, Ldc/a;->h(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/util/List;)V

    .line 20
    iget-object p1, p0, Ldc/a;->b:Led/e;

    .line 21
    invoke-static {p1, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance p2, Led/b;

    const/4 v5, 0x3

    const/16 v0, 0x1f

    .line 23
    invoke-static {v3, v3, v3, v2, v0}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v8

    .line 24
    sget-object v0, Lec/a;->a:Lec/a;

    .line 25
    sget-object v4, Lec/a;->e:Led/d;

    .line 26
    invoke-static {v4}, Landroidx/lifecycle/o;->y(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    const-string v6, "Save_Credential_Succeeded"

    const-string v7, "Saved credential to credential store"

    move-object v4, p2

    .line 27
    invoke-direct/range {v4 .. v9}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 28
    invoke-interface {p1, p2}, Led/e;->b(Landroid/support/v4/media/a;)V

    return-void

    .line 29
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type android.accounts.AccountManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 30
    iget-object p2, p0, Ldc/a;->b:Led/e;

    .line 31
    invoke-static {p2, v1}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Led/b;

    const/4 v5, 0x5

    const-string v1, "Failed to save credential to credential store with error: "

    .line 33
    invoke-static {v1, p1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {p1}, Lec/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1e

    invoke-static {v1, v3, v3, v2, v4}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v8

    .line 35
    sget-object v1, Lec/a;->a:Lec/a;

    const/4 v3, 0x2

    new-array v3, v3, [Led/d;

    .line 36
    sget-object v4, Lec/a;->e:Led/d;

    aput-object v4, v3, v2

    .line 37
    sget-object v2, Lec/a;->f:Led/d;

    const/4 v4, 0x1

    aput-object v2, v3, v4

    .line 38
    invoke-static {v3}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    const-string v6, "Save_Credential_Failed"

    move-object v4, v0

    .line 39
    invoke-direct/range {v4 .. v9}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 40
    invoke-interface {p2, v0}, Led/e;->b(Landroid/support/v4/media/a;)V

    .line 41
    throw p1
.end method

.method public final b(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "expirationDate"

    invoke-static {v0, p1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "idToken"

    invoke-static {v0, p1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "keyListOfPackageNames"

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, ""

    .line 2
    invoke-static {p1, p2}, Lp4/h;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ","

    .line 3
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lyd/s;->B0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lgd/n;->n0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    return-object p1
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "refreshToken"

    invoke-static {v0, p1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "upmId"

    invoke-static {v0, p1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/c;",
            "Ljd/d<",
            "-",
            "Lob/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "<this>"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    :try_start_0
    iget-object v0, v1, Ldc/a;->a:Landroid/content/Context;

    const-string v5, "account"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Landroid/accounts/AccountManager;

    const-string v5, "com.nike.authcomponent.v1"

    .line 2
    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    const-string v6, "accountManager.getAccountsByType(ACCOUNT_TYPE)"

    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v6, v1, Ldc/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4
    array-length v7, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v3

    :goto_0
    const-string v9, "packageName"

    if-ge v8, v7, :cond_1

    :try_start_1
    aget-object v10, v5, v8

    const-string v11, "it"

    invoke-static {v10, v11}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v10, v6}, Ldc/a;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v11

    .line 5
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    .line 6
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move-object v10, v4

    :goto_1
    if-eqz v10, :cond_2

    .line 7
    invoke-static {v6, v9}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ldc/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 8
    invoke-virtual {v1, v6}, Ldc/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 9
    invoke-virtual {v1, v6}, Ldc/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 10
    invoke-virtual {v1, v6}, Ldc/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v10, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 11
    invoke-virtual {v0, v10, v6}, Landroid/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    if-eqz v14, :cond_2

    .line 12
    new-instance v0, Lwb/a;

    const-string v6, "refreshToken"

    .line 13
    invoke-static {v13, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "upmId"

    .line 14
    invoke-static {v15, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "expirationDate"

    .line 15
    invoke-static {v5, v6}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-object v11, v0

    .line 16
    invoke-direct/range {v11 .. v17}, Lwb/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 17
    iget-object v5, v1, Ldc/a;->b:Led/e;

    .line 18
    invoke-static {v5, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v12, Led/b;

    const/4 v7, 0x3

    const/16 v6, 0x1f

    .line 20
    invoke-static {v4, v4, v4, v3, v6}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v10

    .line 21
    sget-object v6, Lec/a;->a:Lec/a;

    .line 22
    sget-object v8, Lec/a;->e:Led/d;

    .line 23
    invoke-static {v8}, Landroidx/lifecycle/o;->y(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    const-string v8, "Get_Cached_Credential_Succeeded"

    const-string v9, "Loaded credential from credential store"

    move-object v6, v12

    .line 24
    invoke-direct/range {v6 .. v11}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 25
    invoke-interface {v5, v12}, Led/e;->b(Landroid/support/v4/media/a;)V

    return-object v0

    :cond_2
    return-object v4

    .line 26
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type android.accounts.AccountManager"

    invoke-direct {v0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    # Open Adapt: a separately signed clone has no right to Nike account credentials.
    instance-of v5, v0, Ljava/lang/SecurityException;
    if-eqz v5, :openadapt_keep_original_account_error
    const/4 v0, 0x0
    return-object v0
    :openadapt_keep_original_account_error

    .line 27
    iget-object v5, v1, Ldc/a;->b:Led/e;

    .line 28
    invoke-static {v5, v2}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v2, Led/b;

    const/4 v7, 0x5

    const-string v6, "Failed to load credential from credential store with error: "

    .line 30
    invoke-static {v6, v0}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 31
    invoke-static {v0}, Lec/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x1e

    invoke-static {v6, v4, v4, v3, v8}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v10

    .line 32
    sget-object v4, Lec/a;->a:Lec/a;

    const/4 v6, 0x2

    new-array v6, v6, [Led/d;

    .line 33
    sget-object v8, Lec/a;->e:Led/d;

    aput-object v8, v6, v3

    .line 34
    sget-object v3, Lec/a;->f:Led/d;

    const/4 v8, 0x1

    aput-object v3, v6, v8

    .line 35
    invoke-static {v6}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v3}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    const-string v8, "Get_Cached_Credential_Failed"

    move-object v6, v2

    .line 36
    invoke-direct/range {v6 .. v11}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 37
    invoke-interface {v5, v2}, Led/e;->b(Landroid/support/v4/media/a;)V

    .line 38
    throw v0
.end method

.method public final h(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManager;",
            "Landroid/accounts/Account;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, ","

    .line 2
    invoke-static {v1, v2}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v0, v2}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move v1, v3

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Landroidx/lifecycle/o;->L()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    const-string p3, "keyListOfPackageNames"

    .line 4
    invoke-virtual {p1, p2, p3, v0}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final remove()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldc/c;",
            "Ljd/d<",
            "-",
            "Lfd/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "<this>"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    iget-object v3, p0, Ldc/a;->a:Landroid/content/Context;

    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    check-cast v3, Landroid/accounts/AccountManager;

    const-string v4, "com.nike.authcomponent.v1"

    .line 2
    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    const-string v5, "accountManager.getAccountsByType(ACCOUNT_TYPE)"

    invoke-static {v4, v5}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v5, p0, Ldc/a;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 4
    array-length v6, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v1

    :goto_0
    const-string v8, "packageName"

    if-ge v7, v6, :cond_1

    :try_start_1
    aget-object v9, v4, v7

    const-string v10, "it"

    invoke-static {v9, v10}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v9, v5}, Ldc/a;->b(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    .line 5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    .line 6
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v2

    :goto_1
    if-nez v9, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v3, v9, v5, v2}, Landroid/accounts/AccountManager;->setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v5, v8}, Lp4/h;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Ldc/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v5}, Ldc/a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, v5}, Ldc/a;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v5}, Ldc/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4, v2}, Landroid/accounts/AccountManager;->setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, v3, v9}, Ldc/a;->e(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/util/List;

    move-result-object v4

    .line 13
    invoke-interface {v4, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {p0, v3, v9, v4}, Ldc/a;->h(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/util/List;)V

    .line 15
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-virtual {v3, v9}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    .line 17
    :cond_3
    :goto_2
    iget-object v3, p0, Ldc/a;->b:Led/e;

    .line 18
    invoke-static {v3, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v10, Led/b;

    const/4 v5, 0x3

    const/16 v4, 0x1f

    .line 20
    invoke-static {v2, v2, v2, v1, v4}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v8

    .line 21
    sget-object v4, Lec/a;->a:Lec/a;

    .line 22
    sget-object v6, Lec/a;->e:Led/d;

    .line 23
    invoke-static {v6}, Landroidx/lifecycle/o;->y(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    const-string v6, "Clear_Cached_Credential_Succeeded"

    const-string v7, "Cleared the cached credential from the credential store"

    move-object v4, v10

    .line 24
    invoke-direct/range {v4 .. v9}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 25
    invoke-interface {v3, v10}, Led/e;->b(Landroid/support/v4/media/a;)V

    return-void

    .line 26
    :cond_4
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "null cannot be cast to non-null type android.accounts.AccountManager"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    .line 27
    iget-object v4, p0, Ldc/a;->b:Led/e;

    .line 28
    invoke-static {v4, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Led/b;

    const/4 v6, 0x5

    const-string v5, "Failed to clear the cached credential from credential store with error: "

    .line 30
    invoke-static {v5, v3}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 31
    invoke-static {v3}, Lec/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1e

    invoke-static {v5, v2, v2, v1, v7}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object v9

    .line 32
    sget-object v2, Lec/a;->a:Lec/a;

    const/4 v5, 0x2

    new-array v5, v5, [Led/d;

    .line 33
    sget-object v7, Lec/a;->e:Led/d;

    aput-object v7, v5, v1

    .line 34
    sget-object v1, Lec/a;->f:Led/d;

    const/4 v7, 0x1

    aput-object v1, v5, v7

    .line 35
    invoke-static {v5}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    const-string v7, "Clear_Cached_Credential_Failed"

    move-object v5, v0

    .line 36
    invoke-direct/range {v5 .. v10}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 37
    invoke-interface {v4, v0}, Led/e;->b(Landroid/support/v4/media/a;)V

    .line 38
    throw v3
.end method
