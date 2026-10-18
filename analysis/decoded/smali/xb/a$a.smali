.class public final Lxb/a$a;
.super Ljava/lang/Object;
.source "IdentityToken.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Led/e;)Lxb/a;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telemetryProvider"

    invoke-static {p2, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lxb/a;

    invoke-direct {v0, p1}, Lxb/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-static {p1}, Ld3/e;->g(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :goto_0
    invoke-static {v0}, Lfd/f;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance v7, Led/b;

    const/4 v2, 0x5

    const-string v1, "Failed to convert JWT into IdentityToken with error: "

    .line 5
    invoke-static {v1, p1}, Lp4/h;->B(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {p1}, Lec/b;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x1e

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v3, v3, v5, v1}, Lec/b;->a(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Integer;II)Ljava/util/Map;

    move-result-object p1

    .line 7
    sget-object v1, Lec/a;->a:Lec/a;

    const/4 v3, 0x2

    new-array v3, v3, [Led/d;

    .line 8
    sget-object v6, Lec/a;->e:Led/d;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    .line 9
    sget-object v6, Lec/a;->f:Led/d;

    aput-object v6, v3, v5

    .line 10
    invoke-static {v3}, Landroidx/lifecycle/o;->z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lec/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    const-string v3, "JWT_Conversion_Failed"

    move-object v1, v7

    move-object v5, p1

    .line 11
    invoke-direct/range {v1 .. v6}, Led/b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 12
    invoke-interface {p2, v7}, Led/e;->b(Landroid/support/v4/media/a;)V

    .line 13
    :cond_0
    invoke-static {v0}, Ld3/e;->p(Ljava/lang/Object;)V

    check-cast v0, Lxb/a;

    return-object v0
.end method
